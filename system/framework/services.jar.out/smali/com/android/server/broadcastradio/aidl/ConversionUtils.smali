.class final Lcom/android/server/broadcastradio/aidl/ConversionUtils;
.super Ljava/lang/Object;
.source "ConversionUtils.java"


# static fields
.field public static final RADIO_U_VERSION_REQUIRED:J = 0xf9a4b7cL

.field public static final RADIO_V_VERSION_REQUIRED:J = 0x120927cfL

.field private static final TAG:Ljava/lang/String; = "BcRadioAidlSrv.convert"


# direct methods
.method public static synthetic $r8$lambda$5BNW2R6Mrq7TNyIBTYq_zExTvbc(I)[Landroid/hardware/broadcastradio/ProgramIdentifier;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->lambda$programSelectorToHalProgramSelector$2(I)[Landroid/hardware/broadcastradio/ProgramIdentifier;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$GjniY_a6MHpBUMB3Bwajra05_ZU(I)[Landroid/hardware/radio/RadioManager$BandDescriptor;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->lambda$amfmConfigToBands$1(I)[Landroid/hardware/radio/RadioManager$BandDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$KZ7tTfXftYW6kEdF33oqtGf2JWE(I)[Landroid/hardware/broadcastradio/VendorKeyValue;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->lambda$vendorInfoToHalVendorKeyValues$0(I)[Landroid/hardware/broadcastradio/VendorKeyValue;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ddUIRVUf_qDHtPrR8GOfi-N3Vb4(I)[Landroid/hardware/broadcastradio/ProgramIdentifier;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->lambda$filterToHalProgramFilter$3(I)[Landroid/hardware/broadcastradio/ProgramIdentifier;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .locals 2

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ConversionUtils class is noninstantiable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static alertAreaFromHalAlertArea(Landroid/hardware/broadcastradio/AlertArea;)Landroid/hardware/radio/RadioAlert$AlertArea;
    .locals 4
    .param p0, "halAlertArea"    # Landroid/hardware/broadcastradio/AlertArea;

    .line 605
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 606
    .local v0, "polygonList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/radio/RadioAlert$Polygon;>;"
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_0
    iget-object v2, p0, Landroid/hardware/broadcastradio/AlertArea;->polygons:[Landroid/hardware/broadcastradio/Polygon;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 607
    iget-object v2, p0, Landroid/hardware/broadcastradio/AlertArea;->polygons:[Landroid/hardware/broadcastradio/Polygon;

    aget-object v2, v2, v1

    invoke-static {v2}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->polygonFromHalPolygon(Landroid/hardware/broadcastradio/Polygon;)Landroid/hardware/radio/RadioAlert$Polygon;

    move-result-object v2

    .line 608
    .local v2, "polygon":Landroid/hardware/radio/RadioAlert$Polygon;
    if-eqz v2, :cond_0

    .line 609
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 606
    .end local v2    # "polygon":Landroid/hardware/radio/RadioAlert$Polygon;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 612
    .end local v1    # "idx":I
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/hardware/broadcastradio/AlertArea;->geocodes:[Landroid/hardware/broadcastradio/Geocode;

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 613
    .local v1, "geocodeList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/radio/RadioAlert$Geocode;>;"
    const/4 v2, 0x0

    .local v2, "idx":I
    :goto_1
    iget-object v3, p0, Landroid/hardware/broadcastradio/AlertArea;->geocodes:[Landroid/hardware/broadcastradio/Geocode;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 614
    iget-object v3, p0, Landroid/hardware/broadcastradio/AlertArea;->geocodes:[Landroid/hardware/broadcastradio/Geocode;

    aget-object v3, v3, v2

    invoke-static {v3}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->geocodeFromHalGeocode(Landroid/hardware/broadcastradio/Geocode;)Landroid/hardware/radio/RadioAlert$Geocode;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 613
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    nop

    .line 616
    .end local v2    # "idx":I
    new-instance v2, Landroid/hardware/radio/RadioAlert$AlertArea;

    invoke-direct {v2, v0, v1}, Landroid/hardware/radio/RadioAlert$AlertArea;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v2
.end method

.method private static alertInfoFromHalAlertInfo(Landroid/hardware/broadcastradio/AlertInfo;)Landroid/hardware/radio/RadioAlert$AlertInfo;
    .locals 9
    .param p0, "halAlertInfo"    # Landroid/hardware/broadcastradio/AlertInfo;

    .line 621
    iget-object v0, p0, Landroid/hardware/broadcastradio/AlertInfo;->categoryArray:[I

    array-length v0, v0

    new-array v2, v0, [I

    .line 622
    .local v2, "categoryArray":[I
    const/4 v0, 0x0

    .local v0, "idx":I
    :goto_0
    iget-object v1, p0, Landroid/hardware/broadcastradio/AlertInfo;->categoryArray:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 625
    iget-object v1, p0, Landroid/hardware/broadcastradio/AlertInfo;->categoryArray:[I

    aget v1, v1, v0

    aput v1, v2, v0

    .line 622
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 627
    .end local v0    # "idx":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 628
    .local v7, "alertAreaList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/radio/RadioAlert$AlertArea;>;"
    const/4 v0, 0x0

    .restart local v0    # "idx":I
    :goto_1
    iget-object v1, p0, Landroid/hardware/broadcastradio/AlertInfo;->areas:[Landroid/hardware/broadcastradio/AlertArea;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 629
    iget-object v1, p0, Landroid/hardware/broadcastradio/AlertInfo;->areas:[Landroid/hardware/broadcastradio/AlertArea;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->alertAreaFromHalAlertArea(Landroid/hardware/broadcastradio/AlertArea;)Landroid/hardware/radio/RadioAlert$AlertArea;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 628
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    nop

    .line 637
    .end local v0    # "idx":I
    new-instance v1, Landroid/hardware/radio/RadioAlert$AlertInfo;

    iget v3, p0, Landroid/hardware/broadcastradio/AlertInfo;->urgency:I

    iget v4, p0, Landroid/hardware/broadcastradio/AlertInfo;->severity:I

    iget v5, p0, Landroid/hardware/broadcastradio/AlertInfo;->certainty:I

    iget-object v6, p0, Landroid/hardware/broadcastradio/AlertInfo;->description:Ljava/lang/String;

    iget-object v8, p0, Landroid/hardware/broadcastradio/AlertInfo;->language:Ljava/lang/String;

    invoke-direct/range {v1 .. v8}, Landroid/hardware/radio/RadioAlert$AlertInfo;-><init>([IIIILjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v1
.end method

.method private static amfmConfigToBands(Landroid/hardware/broadcastradio/AmFmRegionConfig;)[Landroid/hardware/radio/RadioManager$BandDescriptor;
    .locals 15
    .param p0, "config"    # Landroid/hardware/broadcastradio/AmFmRegionConfig;

    .line 261
    if-nez p0, :cond_0

    .line 262
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/hardware/radio/RadioManager$BandDescriptor;

    return-object v0

    .line 265
    :cond_0
    iget-object v0, p0, Landroid/hardware/broadcastradio/AmFmRegionConfig;->ranges:[Landroid/hardware/broadcastradio/AmFmBandRange;

    array-length v0, v0

    .line 266
    .local v0, "len":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 269
    .local v1, "bands":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/radio/RadioManager$BandDescriptor;>;"
    const/4 v3, 0x0

    .line 271
    .local v3, "region":I
    const/4 v2, 0x0

    move v13, v2

    .local v13, "i":I
    :goto_0
    if-ge v13, v0, :cond_3

    .line 272
    iget-object v2, p0, Landroid/hardware/broadcastradio/AmFmRegionConfig;->ranges:[Landroid/hardware/broadcastradio/AmFmBandRange;

    aget-object v2, v2, v13

    iget v2, v2, Landroid/hardware/broadcastradio/AmFmBandRange;->lowerBound:I

    invoke-static {v2}, Lcom/android/server/broadcastradio/aidl/Utils;->getBand(I)Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;

    move-result-object v14

    .line 273
    .local v14, "bandType":Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;
    sget-object v2, Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;->UNKNOWN:Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;

    if-ne v14, v2, :cond_1

    .line 274
    iget-object v2, p0, Landroid/hardware/broadcastradio/AmFmRegionConfig;->ranges:[Landroid/hardware/broadcastradio/AmFmBandRange;

    aget-object v2, v2, v13

    iget v2, v2, Landroid/hardware/broadcastradio/AmFmBandRange;->lowerBound:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v4, "BcRadioAidlSrv.convert"

    const-string v5, "Unknown frequency band at %d kHz"

    invoke-static {v4, v5, v2}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 275
    goto :goto_1

    .line 277
    :cond_1
    sget-object v2, Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;->FM:Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;

    if-ne v14, v2, :cond_2

    .line 278
    new-instance v2, Landroid/hardware/radio/RadioManager$FmBandDescriptor;

    iget-object v4, p0, Landroid/hardware/broadcastradio/AmFmRegionConfig;->ranges:[Landroid/hardware/broadcastradio/AmFmBandRange;

    aget-object v4, v4, v13

    iget v5, v4, Landroid/hardware/broadcastradio/AmFmBandRange;->lowerBound:I

    iget-object v4, p0, Landroid/hardware/broadcastradio/AmFmRegionConfig;->ranges:[Landroid/hardware/broadcastradio/AmFmBandRange;

    aget-object v4, v4, v13

    iget v6, v4, Landroid/hardware/broadcastradio/AmFmBandRange;->upperBound:I

    iget-object v4, p0, Landroid/hardware/broadcastradio/AmFmRegionConfig;->ranges:[Landroid/hardware/broadcastradio/AmFmBandRange;

    aget-object v4, v4, v13

    iget v7, v4, Landroid/hardware/broadcastradio/AmFmBandRange;->spacing:I

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v4, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-direct/range {v2 .. v12}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;-><init>(IIIIIZZZZZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 287
    :cond_2
    new-instance v2, Landroid/hardware/radio/RadioManager$AmBandDescriptor;

    iget-object v4, p0, Landroid/hardware/broadcastradio/AmFmRegionConfig;->ranges:[Landroid/hardware/broadcastradio/AmFmBandRange;

    aget-object v4, v4, v13

    iget v5, v4, Landroid/hardware/broadcastradio/AmFmBandRange;->lowerBound:I

    iget-object v4, p0, Landroid/hardware/broadcastradio/AmFmRegionConfig;->ranges:[Landroid/hardware/broadcastradio/AmFmBandRange;

    aget-object v4, v4, v13

    iget v6, v4, Landroid/hardware/broadcastradio/AmFmBandRange;->upperBound:I

    iget-object v4, p0, Landroid/hardware/broadcastradio/AmFmRegionConfig;->ranges:[Landroid/hardware/broadcastradio/AmFmBandRange;

    aget-object v4, v4, v13

    iget v7, v4, Landroid/hardware/broadcastradio/AmFmBandRange;->spacing:I

    const/4 v8, 0x1

    const/4 v4, 0x0

    invoke-direct/range {v2 .. v8}, Landroid/hardware/radio/RadioManager$AmBandDescriptor;-><init>(IIIIIZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    .end local v14    # "bandType":Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_3
    nop

    .line 297
    .end local v13    # "i":I
    new-instance v2, Lcom/android/server/broadcastradio/aidl/ConversionUtils$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/broadcastradio/aidl/ConversionUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/radio/RadioManager$BandDescriptor;

    return-object v2
.end method

.method public static announcementFromHalAnnouncement(Landroid/hardware/broadcastradio/Announcement;)Landroid/hardware/radio/Announcement;
    .locals 4
    .param p0, "hwAnnouncement"    # Landroid/hardware/broadcastradio/Announcement;

    .line 831
    new-instance v0, Landroid/hardware/radio/Announcement;

    iget-object v1, p0, Landroid/hardware/broadcastradio/Announcement;->selector:Landroid/hardware/broadcastradio/ProgramSelector;

    .line 832
    invoke-static {v1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->programSelectorFromHalProgramSelector(Landroid/hardware/broadcastradio/ProgramSelector;)Landroid/hardware/radio/ProgramSelector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-byte v2, p0, Landroid/hardware/broadcastradio/Announcement;->type:B

    iget-object v3, p0, Landroid/hardware/broadcastradio/Announcement;->vendorInfo:[Landroid/hardware/broadcastradio/VendorKeyValue;

    .line 835
    invoke-static {v3}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->vendorInfoFromHalVendorKeyValues([Landroid/hardware/broadcastradio/VendorKeyValue;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/radio/Announcement;-><init>(Landroid/hardware/radio/ProgramSelector;ILjava/util/Map;)V

    .line 831
    return-object v0
.end method

.method static configFlagMeetsSdkVersionRequirement(II)Z
    .locals 2
    .param p0, "configFlag"    # I
    .param p1, "uid"    # I

    .line 822
    invoke-static {p1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->isAtLeastV(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 823
    const/16 v0, 0xb

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 826
    :cond_1
    return v1
.end method

.method static convertChunkToTargetSdkVersion(Landroid/hardware/radio/ProgramList$Chunk;I)Landroid/hardware/radio/ProgramList$Chunk;
    .locals 7
    .param p0, "chunk"    # Landroid/hardware/radio/ProgramList$Chunk;
    .param p1, "uid"    # I

    .line 802
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 803
    .local v0, "modified":Ljava/util/Set;, "Ljava/util/Set<Landroid/hardware/radio/RadioManager$ProgramInfo;>;"
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramList$Chunk;->getModified()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 804
    .local v1, "modifiedIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/radio/RadioManager$ProgramInfo;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 805
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioManager$ProgramInfo;

    .line 806
    .local v2, "info":Landroid/hardware/radio/RadioManager$ProgramInfo;
    invoke-static {v2, p1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->programInfoMeetsSdkVersionRequirement(Landroid/hardware/radio/RadioManager$ProgramInfo;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 807
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 809
    .end local v2    # "info":Landroid/hardware/radio/RadioManager$ProgramInfo;
    :cond_0
    goto :goto_0

    .line 810
    :cond_1
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 811
    .local v2, "removed":Ljava/util/Set;, "Ljava/util/Set<Landroid/hardware/radio/UniqueProgramIdentifier;>;"
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramList$Chunk;->getRemoved()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 812
    .local v3, "removedIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/radio/UniqueProgramIdentifier;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 813
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/UniqueProgramIdentifier;

    .line 814
    .local v4, "id":Landroid/hardware/radio/UniqueProgramIdentifier;
    invoke-virtual {v4}, Landroid/hardware/radio/UniqueProgramIdentifier;->getPrimaryId()Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierMeetsSdkVersionRequirement(Landroid/hardware/radio/ProgramSelector$Identifier;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 815
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 817
    .end local v4    # "id":Landroid/hardware/radio/UniqueProgramIdentifier;
    :cond_2
    goto :goto_1

    .line 818
    :cond_3
    new-instance v4, Landroid/hardware/radio/ProgramList$Chunk;

    invoke-virtual {p0}, Landroid/hardware/radio/ProgramList$Chunk;->isPurge()Z

    move-result v5

    invoke-virtual {p0}, Landroid/hardware/radio/ProgramList$Chunk;->isComplete()Z

    move-result v6

    invoke-direct {v4, v5, v6, v0, v2}, Landroid/hardware/radio/ProgramList$Chunk;-><init>(ZZLjava/util/Set;Ljava/util/Set;)V

    return-object v4
.end method

.method private static dabConfigFromHalDabTableEntries([Landroid/hardware/broadcastradio/DabTableEntry;)Ljava/util/Map;
    .locals 4
    .param p0, "config"    # [Landroid/hardware/broadcastradio/DabTableEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/hardware/broadcastradio/DabTableEntry;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 303
    if-nez p0, :cond_0

    .line 304
    const/4 v0, 0x0

    return-object v0

    .line 306
    :cond_0
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 307
    .local v0, "dabConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 308
    aget-object v2, p0, v1

    iget-object v2, v2, Landroid/hardware/broadcastradio/DabTableEntry;->label:Ljava/lang/String;

    aget-object v3, p0, v1

    iget v3, v3, Landroid/hardware/broadcastradio/DabTableEntry;->frequencyKhz:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 310
    .end local v1    # "i":I
    return-object v0
.end method

.method static filterToHalProgramFilter(Landroid/hardware/radio/ProgramList$Filter;)Landroid/hardware/broadcastradio/ProgramFilter;
    .locals 10
    .param p0, "filter"    # Landroid/hardware/radio/ProgramList$Filter;

    .line 725
    if-nez p0, :cond_0

    .line 726
    new-instance v0, Landroid/hardware/radio/ProgramList$Filter;

    invoke-direct {v0}, Landroid/hardware/radio/ProgramList$Filter;-><init>()V

    move-object p0, v0

    .line 729
    :cond_0
    new-instance v0, Landroid/hardware/broadcastradio/ProgramFilter;

    invoke-direct {v0}, Landroid/hardware/broadcastradio/ProgramFilter;-><init>()V

    .line 731
    .local v0, "hwFilter":Landroid/hardware/broadcastradio/ProgramFilter;
    new-instance v1, Landroid/util/IntArray;

    invoke-virtual {p0}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifierTypes()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/IntArray;-><init>(I)V

    .line 732
    .local v1, "identifierTypeList":Landroid/util/IntArray;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 733
    .local v2, "identifiersList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/broadcastradio/ProgramIdentifier;>;"
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifierTypes()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 734
    .local v3, "typeIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 735
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/util/IntArray;->add(I)V

    goto :goto_0

    .line 737
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifiers()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 738
    .local v4, "idIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/radio/ProgramSelector$Identifier;>;"
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 739
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 740
    .local v5, "id":Landroid/hardware/radio/ProgramSelector$Identifier;
    invoke-static {v5}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierToHalProgramIdentifier(Landroid/hardware/radio/ProgramSelector$Identifier;)Landroid/hardware/broadcastradio/ProgramIdentifier;

    move-result-object v6

    .line 741
    .local v6, "hwId":Landroid/hardware/broadcastradio/ProgramIdentifier;
    iget v7, v6, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    if-eqz v7, :cond_2

    .line 742
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 744
    :cond_2
    const-string v7, "Invalid identifiers: %s"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v8

    const-string v9, "BcRadioAidlSrv.convert"

    invoke-static {v9, v7, v8}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 746
    .end local v5    # "id":Landroid/hardware/radio/ProgramSelector$Identifier;
    .end local v6    # "hwId":Landroid/hardware/broadcastradio/ProgramIdentifier;
    :goto_2
    goto :goto_1

    .line 748
    :cond_3
    invoke-virtual {v1}, Landroid/util/IntArray;->toArray()[I

    move-result-object v5

    iput-object v5, v0, Landroid/hardware/broadcastradio/ProgramFilter;->identifierTypes:[I

    .line 749
    new-instance v5, Lcom/android/server/broadcastradio/aidl/ConversionUtils$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Lcom/android/server/broadcastradio/aidl/ConversionUtils$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/hardware/broadcastradio/ProgramIdentifier;

    iput-object v5, v0, Landroid/hardware/broadcastradio/ProgramFilter;->identifiers:[Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 750
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramList$Filter;->areCategoriesIncluded()Z

    move-result v5

    iput-boolean v5, v0, Landroid/hardware/broadcastradio/ProgramFilter;->includeCategories:Z

    .line 751
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramList$Filter;->areModificationsExcluded()Z

    move-result v5

    iput-boolean v5, v0, Landroid/hardware/broadcastradio/ProgramFilter;->excludeModifications:Z

    .line 753
    return-object v0
.end method

.method private static geocodeFromHalGeocode(Landroid/hardware/broadcastradio/Geocode;)Landroid/hardware/radio/RadioAlert$Geocode;
    .locals 3
    .param p0, "geocode"    # Landroid/hardware/broadcastradio/Geocode;

    .line 600
    new-instance v0, Landroid/hardware/radio/RadioAlert$Geocode;

    iget-object v1, p0, Landroid/hardware/broadcastradio/Geocode;->valueName:Ljava/lang/String;

    iget-object v2, p0, Landroid/hardware/broadcastradio/Geocode;->value:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/hardware/radio/RadioAlert$Geocode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static halResultToTunerResult(I)I
    .locals 1
    .param p0, "result"    # I

    .line 134
    packed-switch p0, :pswitch_data_0

    .line 151
    const/4 v0, 0x7

    return v0

    .line 148
    :pswitch_0
    const/4 v0, 0x6

    return v0

    .line 146
    :pswitch_1
    const/4 v0, 0x5

    return v0

    .line 144
    :pswitch_2
    const/4 v0, 0x4

    return v0

    .line 142
    :pswitch_3
    const/4 v0, 0x3

    return v0

    .line 140
    :pswitch_4
    const/4 v0, 0x2

    return v0

    .line 138
    :pswitch_5
    const/4 v0, 0x1

    return v0

    .line 136
    :pswitch_6
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static identifierFromHalProgramIdentifier(Landroid/hardware/broadcastradio/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;
    .locals 4
    .param p0, "id"    # Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 374
    iget v0, p0, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    if-nez v0, :cond_0

    .line 375
    const/4 v0, 0x0

    return-object v0

    .line 378
    :cond_0
    iget v0, p0, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 379
    const/16 v0, 0xe

    .local v0, "idType":I
    goto :goto_0

    .line 380
    .end local v0    # "idType":I
    :cond_1
    iget v0, p0, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_2

    .line 381
    nop

    .line 382
    const/16 v0, 0xf

    .restart local v0    # "idType":I
    goto :goto_0

    .line 387
    .end local v0    # "idType":I
    :cond_2
    iget v0, p0, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    .line 389
    .restart local v0    # "idType":I
    :goto_0
    new-instance v1, Landroid/hardware/radio/ProgramSelector$Identifier;

    iget-wide v2, p0, Landroid/hardware/broadcastradio/ProgramIdentifier;->value:J

    invoke-direct {v1, v0, v2, v3}, Landroid/hardware/radio/ProgramSelector$Identifier;-><init>(IJ)V

    return-object v1
.end method

.method private static identifierMeetsSdkVersionRequirement(Landroid/hardware/radio/ProgramSelector$Identifier;I)Z
    .locals 4
    .param p0, "id"    # Landroid/hardware/radio/ProgramSelector$Identifier;
    .param p1, "uid"    # I

    .line 758
    invoke-static {p1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->isAtLeastV(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 759
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    move-result v0

    const/16 v2, 0xf

    if-ne v0, v2, :cond_0

    .line 760
    return v1

    .line 763
    :cond_0
    invoke-static {p1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->isAtLeastU(I)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 764
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    move-result v0

    const/16 v3, 0xe

    if-eq v0, v3, :cond_1

    move v1, v2

    :cond_1
    return v1

    .line 766
    :cond_2
    return v2
.end method

.method static identifierToHalProgramIdentifier(Landroid/hardware/radio/ProgramSelector$Identifier;)Landroid/hardware/broadcastradio/ProgramIdentifier;
    .locals 8
    .param p0, "id"    # Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 350
    new-instance v0, Landroid/hardware/broadcastradio/ProgramIdentifier;

    invoke-direct {v0}, Landroid/hardware/broadcastradio/ProgramIdentifier;-><init>()V

    .line 351
    .local v0, "hwId":Landroid/hardware/broadcastradio/ProgramIdentifier;
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    move-result v1

    const/4 v2, 0x5

    const/16 v3, 0xe

    if-ne v1, v3, :cond_0

    .line 352
    iput v2, v0, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    goto :goto_0

    .line 353
    :cond_0
    nop

    .line 354
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    move-result v1

    const/16 v4, 0xf

    if-ne v1, v4, :cond_1

    .line 355
    iput v3, v0, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    goto :goto_0

    .line 357
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    move-result v1

    iput v1, v0, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    .line 362
    :goto_0
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramSelector$Identifier;->getValue()J

    move-result-wide v3

    .line 363
    .local v3, "value":J
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 364
    const-wide/32 v1, 0xffff

    and-long/2addr v1, v3

    const/16 v5, 0x10

    ushr-long v5, v3, v5

    const/16 v7, 0x20

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    iput-wide v1, v0, Landroid/hardware/broadcastradio/ProgramIdentifier;->value:J

    goto :goto_1

    .line 366
    :cond_2
    iput-wide v3, v0, Landroid/hardware/broadcastradio/ProgramIdentifier;->value:J

    .line 368
    :goto_1
    return-object v0
.end method

.method private static identifierTypeToProgramType(I)I
    .locals 2
    .param p0, "idType"    # I

    .line 197
    const/4 v0, 0x4

    sparse-switch p0, :sswitch_data_0

    .line 219
    nop

    .line 220
    const/16 v1, 0xf

    if-ne p0, v1, :cond_0

    .line 221
    return v0

    .line 225
    :cond_0
    const/16 v0, 0x3e8

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7cf

    if-gt p0, v0, :cond_1

    .line 227
    return p0

    .line 229
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 217
    :sswitch_0
    const/4 v0, 0x7

    return v0

    .line 214
    :sswitch_1
    const/4 v0, 0x6

    return v0

    .line 211
    :sswitch_2
    const/4 v0, 0x5

    return v0

    .line 205
    :sswitch_3
    return v0

    .line 201
    :sswitch_4
    const/4 v0, 0x2

    return v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_4
        0x3 -> :sswitch_3
        0x5 -> :sswitch_2
        0x6 -> :sswitch_2
        0x7 -> :sswitch_2
        0x8 -> :sswitch_2
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0xe -> :sswitch_2
        0x2714 -> :sswitch_3
    .end sparse-switch
.end method

.method private static identifierTypesToProgramTypes([I)[I
    .locals 6
    .param p0, "idTypes"    # [I

    .line 233
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 235
    .local v0, "programTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 236
    aget v2, p0, v1

    invoke-static {v2}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierTypeToProgramType(I)I

    move-result v2

    .line 238
    .local v2, "pType":I
    if-nez v2, :cond_0

    goto :goto_1

    .line 240
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 241
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 243
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 245
    :cond_1
    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 247
    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 235
    .end local v2    # "pType":I
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    nop

    .line 251
    .end local v1    # "i":I
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 252
    .local v1, "programTypesArray":[I
    const/4 v2, 0x0

    .line 253
    .local v2, "i":I
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 254
    .local v4, "programType":I
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "i":I
    .local v5, "i":I
    aput v4, v1, v2

    .line 255
    .end local v4    # "programType":I
    move v2, v5

    goto :goto_2

    .line 256
    .end local v5    # "i":I
    .restart local v2    # "i":I
    :cond_4
    return-object v1
.end method

.method static isAtLeastU(I)Z
    .locals 2
    .param p0, "uid"    # I

    .line 95
    const-wide/32 v0, 0xf9a4b7c

    invoke-static {v0, v1, p0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v0

    return v0
.end method

.method static isAtLeastV(I)Z
    .locals 2
    .param p0, "uid"    # I

    .line 100
    const-wide/32 v0, 0x120927cf

    invoke-static {v0, v1, p0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v0

    return v0
.end method

.method private static isEmpty(Landroid/hardware/broadcastradio/ProgramSelector;)Z
    .locals 4
    .param p0, "sel"    # Landroid/hardware/broadcastradio/ProgramSelector;

    .line 433
    iget-object v0, p0, Landroid/hardware/broadcastradio/ProgramSelector;->primaryId:Landroid/hardware/broadcastradio/ProgramIdentifier;

    iget v0, v0, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/hardware/broadcastradio/ProgramSelector;->primaryId:Landroid/hardware/broadcastradio/ProgramIdentifier;

    iget-wide v0, v0, Landroid/hardware/broadcastradio/ProgramIdentifier;->value:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/hardware/broadcastradio/ProgramSelector;->secondaryIds:[Landroid/hardware/broadcastradio/ProgramIdentifier;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isValidHalProgramSelector(Landroid/hardware/broadcastradio/ProgramSelector;)Z
    .locals 3
    .param p0, "sel"    # Landroid/hardware/broadcastradio/ProgramSelector;

    .line 398
    iget-object v0, p0, Landroid/hardware/broadcastradio/ProgramSelector;->primaryId:Landroid/hardware/broadcastradio/ProgramIdentifier;

    iget v0, v0, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/hardware/broadcastradio/ProgramSelector;->primaryId:Landroid/hardware/broadcastradio/ProgramIdentifier;

    iget v0, v0, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Landroid/hardware/broadcastradio/ProgramSelector;->primaryId:Landroid/hardware/broadcastradio/ProgramIdentifier;

    iget v0, v0, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Landroid/hardware/broadcastradio/ProgramSelector;->primaryId:Landroid/hardware/broadcastradio/ProgramIdentifier;

    iget v0, v0, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Landroid/hardware/broadcastradio/ProgramSelector;->primaryId:Landroid/hardware/broadcastradio/ProgramIdentifier;

    iget v0, v0, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    const/16 v2, 0x9

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Landroid/hardware/broadcastradio/ProgramSelector;->primaryId:Landroid/hardware/broadcastradio/ProgramIdentifier;

    iget v0, v0, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    const/16 v2, 0xc

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Landroid/hardware/broadcastradio/ProgramSelector;->primaryId:Landroid/hardware/broadcastradio/ProgramIdentifier;

    iget v0, v0, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    .line 404
    invoke-static {v0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->isVendorIdentifierType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    nop

    .line 398
    :goto_1
    return v1
.end method

.method private static isValidLogicallyTunedTo(Landroid/hardware/broadcastradio/ProgramIdentifier;)Z
    .locals 3
    .param p0, "id"    # Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 659
    iget v0, p0, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    iget v0, p0, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    iget v0, p0, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    iget v0, p0, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    const/16 v2, 0x9

    if-eq v0, v2, :cond_1

    iget v0, p0, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    const/16 v2, 0xc

    if-eq v0, v2, :cond_1

    iget v0, p0, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    .line 664
    invoke-static {v0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->isVendorIdentifierType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    nop

    .line 659
    :goto_1
    return v1
.end method

.method private static isValidPhysicallyTunedTo(Landroid/hardware/broadcastradio/ProgramIdentifier;)Z
    .locals 3
    .param p0, "id"    # Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 668
    iget v0, p0, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    iget v0, p0, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    const/16 v2, 0xa

    if-eq v0, v2, :cond_1

    iget v0, p0, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    const/16 v2, 0xd

    if-eq v0, v2, :cond_1

    iget v0, p0, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    .line 672
    invoke-static {v0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->isVendorIdentifierType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    nop

    .line 668
    :goto_1
    return v1
.end method

.method private static isVendorIdentifierType(I)Z
    .locals 1
    .param p0, "idType"    # I

    .line 393
    const/16 v0, 0x3e8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7cf

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static synthetic lambda$amfmConfigToBands$1(I)[Landroid/hardware/radio/RadioManager$BandDescriptor;
    .locals 1
    .param p0, "x$0"    # I

    .line 297
    new-array v0, p0, [Landroid/hardware/radio/RadioManager$BandDescriptor;

    return-object v0
.end method

.method private static synthetic lambda$filterToHalProgramFilter$3(I)[Landroid/hardware/broadcastradio/ProgramIdentifier;
    .locals 1
    .param p0, "x$0"    # I

    .line 749
    new-array v0, p0, [Landroid/hardware/broadcastradio/ProgramIdentifier;

    return-object v0
.end method

.method private static synthetic lambda$programSelectorToHalProgramSelector$2(I)[Landroid/hardware/broadcastradio/ProgramIdentifier;
    .locals 1
    .param p0, "x$0"    # I

    .line 424
    new-array v0, p0, [Landroid/hardware/broadcastradio/ProgramIdentifier;

    return-object v0
.end method

.method private static synthetic lambda$vendorInfoToHalVendorKeyValues$0(I)[Landroid/hardware/broadcastradio/VendorKeyValue;
    .locals 1
    .param p0, "x$0"    # I

    .line 173
    new-array v0, p0, [Landroid/hardware/broadcastradio/VendorKeyValue;

    return-object v0
.end method

.method private static polygonFromHalPolygon(Landroid/hardware/broadcastradio/Polygon;)Landroid/hardware/radio/RadioAlert$Polygon;
    .locals 8
    .param p0, "halPolygon"    # Landroid/hardware/broadcastradio/Polygon;

    .line 580
    iget-object v0, p0, Landroid/hardware/broadcastradio/Polygon;->coordinates:[Landroid/hardware/broadcastradio/Coordinate;

    array-length v0, v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const-string v3, "BcRadioAidlSrv.convert"

    if-ge v0, v1, :cond_0

    .line 581
    const-string v0, "Number of coordinates in alert polygon cannot be less than 4"

    invoke-static {v3, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    return-object v2

    .line 583
    :cond_0
    iget-object v0, p0, Landroid/hardware/broadcastradio/Polygon;->coordinates:[Landroid/hardware/broadcastradio/Coordinate;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-wide v4, v0, Landroid/hardware/broadcastradio/Coordinate;->latitude:D

    iget-object v0, p0, Landroid/hardware/broadcastradio/Polygon;->coordinates:[Landroid/hardware/broadcastradio/Coordinate;

    iget-object v6, p0, Landroid/hardware/broadcastradio/Polygon;->coordinates:[Landroid/hardware/broadcastradio/Coordinate;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    aget-object v0, v0, v6

    iget-wide v6, v0, Landroid/hardware/broadcastradio/Coordinate;->latitude:D

    cmpl-double v0, v4, v6

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/hardware/broadcastradio/Polygon;->coordinates:[Landroid/hardware/broadcastradio/Coordinate;

    aget-object v0, v0, v1

    iget-wide v0, v0, Landroid/hardware/broadcastradio/Coordinate;->longitude:D

    iget-object v4, p0, Landroid/hardware/broadcastradio/Polygon;->coordinates:[Landroid/hardware/broadcastradio/Coordinate;

    iget-object v5, p0, Landroid/hardware/broadcastradio/Polygon;->coordinates:[Landroid/hardware/broadcastradio/Coordinate;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    iget-wide v4, v4, Landroid/hardware/broadcastradio/Coordinate;->longitude:D

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_2

    :cond_1
    goto :goto_1

    .line 590
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/hardware/broadcastradio/Polygon;->coordinates:[Landroid/hardware/broadcastradio/Coordinate;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 591
    .local v0, "coordinates":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/radio/RadioAlert$Coordinate;>;"
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_0
    iget-object v2, p0, Landroid/hardware/broadcastradio/Polygon;->coordinates:[Landroid/hardware/broadcastradio/Coordinate;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 592
    new-instance v2, Landroid/hardware/radio/RadioAlert$Coordinate;

    iget-object v3, p0, Landroid/hardware/broadcastradio/Polygon;->coordinates:[Landroid/hardware/broadcastradio/Coordinate;

    aget-object v3, v3, v1

    iget-wide v3, v3, Landroid/hardware/broadcastradio/Coordinate;->latitude:D

    iget-object v5, p0, Landroid/hardware/broadcastradio/Polygon;->coordinates:[Landroid/hardware/broadcastradio/Coordinate;

    aget-object v5, v5, v1

    iget-wide v5, v5, Landroid/hardware/broadcastradio/Coordinate;->longitude:D

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/hardware/radio/RadioAlert$Coordinate;-><init>(DD)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 591
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    nop

    .line 595
    .end local v1    # "idx":I
    new-instance v1, Landroid/hardware/radio/RadioAlert$Polygon;

    invoke-direct {v1, v0}, Landroid/hardware/radio/RadioAlert$Polygon;-><init>(Ljava/util/List;)V

    return-object v1

    .line 587
    .end local v0    # "coordinates":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/radio/RadioAlert$Coordinate;>;"
    :goto_1
    const-string v0, "The first and the last coordinate in alert polygon cannot be different"

    invoke-static {v3, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    return-object v2
.end method

.method static programInfoFromHalProgramInfo(Landroid/hardware/broadcastradio/ProgramInfo;)Landroid/hardware/radio/RadioManager$ProgramInfo;
    .locals 11
    .param p0, "info"    # Landroid/hardware/broadcastradio/ProgramInfo;

    .line 677
    iget-object v0, p0, Landroid/hardware/broadcastradio/ProgramInfo;->selector:Landroid/hardware/broadcastradio/ProgramSelector;

    invoke-static {v0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->isValidHalProgramSelector(Landroid/hardware/broadcastradio/ProgramSelector;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 678
    const/4 v0, 0x0

    return-object v0

    .line 680
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    .line 681
    .local v5, "relatedContent":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/radio/ProgramSelector$Identifier;>;"
    iget-object v0, p0, Landroid/hardware/broadcastradio/ProgramInfo;->relatedContent:[Landroid/hardware/broadcastradio/ProgramIdentifier;

    if-eqz v0, :cond_2

    .line 682
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/hardware/broadcastradio/ProgramInfo;->relatedContent:[Landroid/hardware/broadcastradio/ProgramIdentifier;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 683
    iget-object v1, p0, Landroid/hardware/broadcastradio/ProgramInfo;->relatedContent:[Landroid/hardware/broadcastradio/ProgramIdentifier;

    aget-object v1, v1, v0

    .line 684
    invoke-static {v1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierFromHalProgramIdentifier(Landroid/hardware/broadcastradio/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v1

    .line 685
    .local v1, "relatedContentId":Landroid/hardware/radio/ProgramSelector$Identifier;
    if-eqz v1, :cond_1

    .line 686
    invoke-interface {v5, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 682
    .end local v1    # "relatedContentId":Landroid/hardware/radio/ProgramSelector$Identifier;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 690
    .end local v0    # "i":I
    :cond_2
    nop

    .line 702
    new-instance v1, Landroid/hardware/radio/RadioManager$ProgramInfo;

    iget-object v0, p0, Landroid/hardware/broadcastradio/ProgramInfo;->selector:Landroid/hardware/broadcastradio/ProgramSelector;

    .line 703
    invoke-static {v0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->programSelectorFromHalProgramSelector(Landroid/hardware/broadcastradio/ProgramSelector;)Landroid/hardware/radio/ProgramSelector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroid/hardware/broadcastradio/ProgramInfo;->logicallyTunedTo:Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 704
    invoke-static {v0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierFromHalProgramIdentifier(Landroid/hardware/broadcastradio/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v3

    iget-object v0, p0, Landroid/hardware/broadcastradio/ProgramInfo;->physicallyTunedTo:Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 705
    invoke-static {v0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierFromHalProgramIdentifier(Landroid/hardware/broadcastradio/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v4

    iget v6, p0, Landroid/hardware/broadcastradio/ProgramInfo;->infoFlags:I

    iget v7, p0, Landroid/hardware/broadcastradio/ProgramInfo;->signalQuality:I

    iget-object v0, p0, Landroid/hardware/broadcastradio/ProgramInfo;->metadata:[Landroid/hardware/broadcastradio/Metadata;

    .line 709
    invoke-static {v0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->radioMetadataFromHalMetadata([Landroid/hardware/broadcastradio/Metadata;)Landroid/hardware/radio/RadioMetadata;

    move-result-object v8

    iget-object v0, p0, Landroid/hardware/broadcastradio/ProgramInfo;->vendorInfo:[Landroid/hardware/broadcastradio/VendorKeyValue;

    .line 710
    invoke-static {v0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->vendorInfoFromHalVendorKeyValues([Landroid/hardware/broadcastradio/VendorKeyValue;)Ljava/util/Map;

    move-result-object v9

    iget-object v0, p0, Landroid/hardware/broadcastradio/ProgramInfo;->emergencyAlert:Landroid/hardware/broadcastradio/Alert;

    .line 711
    invoke-static {v0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->radioAlertFromHalAlert(Landroid/hardware/broadcastradio/Alert;)Landroid/hardware/radio/RadioAlert;

    move-result-object v10

    invoke-direct/range {v1 .. v10}, Landroid/hardware/radio/RadioManager$ProgramInfo;-><init>(Landroid/hardware/radio/ProgramSelector;Landroid/hardware/radio/ProgramSelector$Identifier;Landroid/hardware/radio/ProgramSelector$Identifier;Ljava/util/Collection;IILandroid/hardware/radio/RadioMetadata;Ljava/util/Map;Landroid/hardware/radio/RadioAlert;)V

    .line 702
    return-object v1
.end method

.method static programInfoMeetsSdkVersionRequirement(Landroid/hardware/radio/RadioManager$ProgramInfo;I)Z
    .locals 3
    .param p0, "info"    # Landroid/hardware/radio/RadioManager$ProgramInfo;
    .param p1, "uid"    # I

    .line 783
    invoke-virtual {p0}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getSelector()Landroid/hardware/radio/ProgramSelector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->programSelectorMeetsSdkVersionRequirement(Landroid/hardware/radio/ProgramSelector;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 784
    return v1

    .line 786
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getLogicallyTunedTo()Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 787
    invoke-virtual {p0}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getLogicallyTunedTo()Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierMeetsSdkVersionRequirement(Landroid/hardware/radio/ProgramSelector$Identifier;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 788
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getPhysicallyTunedTo()Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 789
    invoke-virtual {p0}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getPhysicallyTunedTo()Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierMeetsSdkVersionRequirement(Landroid/hardware/radio/ProgramSelector$Identifier;I)Z

    move-result v0

    nop

    if-nez v0, :cond_3

    .line 790
    :cond_2
    return v1

    .line 792
    :cond_3
    invoke-virtual {p0}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getRelatedContent()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 793
    .local v0, "relatedContentIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/radio/ProgramSelector$Identifier;>;"
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 794
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-static {v2, p1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierMeetsSdkVersionRequirement(Landroid/hardware/radio/ProgramSelector$Identifier;I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 795
    return v1

    .line 798
    :cond_5
    const/4 v1, 0x1

    return v1
.end method

.method static programSelectorFromHalProgramSelector(Landroid/hardware/broadcastradio/ProgramSelector;)Landroid/hardware/radio/ProgramSelector;
    .locals 7
    .param p0, "sel"    # Landroid/hardware/broadcastradio/ProgramSelector;

    .line 440
    invoke-static {p0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->isEmpty(Landroid/hardware/broadcastradio/ProgramSelector;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->isValidHalProgramSelector(Landroid/hardware/broadcastradio/ProgramSelector;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    goto :goto_2

    .line 444
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 445
    .local v0, "secondaryIdList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/radio/ProgramSelector$Identifier;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Landroid/hardware/broadcastradio/ProgramSelector;->secondaryIds:[Landroid/hardware/broadcastradio/ProgramIdentifier;

    array-length v3, v3

    if-ge v2, v3, :cond_4

    .line 446
    iget-object v3, p0, Landroid/hardware/broadcastradio/ProgramSelector;->secondaryIds:[Landroid/hardware/broadcastradio/ProgramIdentifier;

    aget-object v3, v3, v2

    if-eqz v3, :cond_3

    .line 447
    iget-object v3, p0, Landroid/hardware/broadcastradio/ProgramSelector;->secondaryIds:[Landroid/hardware/broadcastradio/ProgramIdentifier;

    aget-object v3, v3, v2

    invoke-static {v3}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierFromHalProgramIdentifier(Landroid/hardware/broadcastradio/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v3

    .line 449
    .local v3, "id":Landroid/hardware/radio/ProgramSelector$Identifier;
    if-nez v3, :cond_2

    .line 450
    iget-object v4, p0, Landroid/hardware/broadcastradio/ProgramSelector;->secondaryIds:[Landroid/hardware/broadcastradio/ProgramIdentifier;

    aget-object v4, v4, v2

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "BcRadioAidlSrv.convert"

    const-string/jumbo v6, "invalid secondary id: %s"

    invoke-static {v5, v6, v4}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 451
    goto :goto_1

    .line 453
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    .end local v3    # "id":Landroid/hardware/radio/ProgramSelector$Identifier;
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    nop

    .line 457
    .end local v2    # "i":I
    new-instance v2, Landroid/hardware/radio/ProgramSelector;

    iget-object v3, p0, Landroid/hardware/broadcastradio/ProgramSelector;->primaryId:Landroid/hardware/broadcastradio/ProgramIdentifier;

    iget v3, v3, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    .line 458
    invoke-static {v3}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierTypeToProgramType(I)I

    move-result v3

    iget-object v4, p0, Landroid/hardware/broadcastradio/ProgramSelector;->primaryId:Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 459
    invoke-static {v4}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierFromHalProgramIdentifier(Landroid/hardware/broadcastradio/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    new-array v5, v5, [Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 460
    invoke-interface {v0, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-direct {v2, v3, v4, v5, v1}, Landroid/hardware/radio/ProgramSelector;-><init>(ILandroid/hardware/radio/ProgramSelector$Identifier;[Landroid/hardware/radio/ProgramSelector$Identifier;[J)V

    .line 457
    return-object v2

    .line 441
    .end local v0    # "secondaryIdList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/radio/ProgramSelector$Identifier;>;"
    :goto_2
    return-object v1
.end method

.method static programSelectorMeetsSdkVersionRequirement(Landroid/hardware/radio/ProgramSelector;I)Z
    .locals 4
    .param p0, "sel"    # Landroid/hardware/radio/ProgramSelector;
    .param p1, "uid"    # I

    .line 770
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramSelector;->getPrimaryId()Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierMeetsSdkVersionRequirement(Landroid/hardware/radio/ProgramSelector$Identifier;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 771
    return v1

    .line 773
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramSelector;->getSecondaryIds()[Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v0

    .line 774
    .local v0, "secondaryIds":[Landroid/hardware/radio/ProgramSelector$Identifier;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 775
    aget-object v3, v0, v2

    invoke-static {v3, p1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierMeetsSdkVersionRequirement(Landroid/hardware/radio/ProgramSelector$Identifier;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 776
    return v1

    .line 774
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 779
    .end local v2    # "i":I
    const/4 v1, 0x1

    return v1
.end method

.method static programSelectorToHalProgramSelector(Landroid/hardware/radio/ProgramSelector;)Landroid/hardware/broadcastradio/ProgramSelector;
    .locals 8
    .param p0, "sel"    # Landroid/hardware/radio/ProgramSelector;

    .line 410
    new-instance v0, Landroid/hardware/broadcastradio/ProgramSelector;

    invoke-direct {v0}, Landroid/hardware/broadcastradio/ProgramSelector;-><init>()V

    .line 413
    .local v0, "hwSel":Landroid/hardware/broadcastradio/ProgramSelector;
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramSelector;->getPrimaryId()Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierToHalProgramIdentifier(Landroid/hardware/radio/ProgramSelector$Identifier;)Landroid/hardware/broadcastradio/ProgramIdentifier;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/broadcastradio/ProgramSelector;->primaryId:Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 414
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramSelector;->getSecondaryIds()[Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v1

    .line 415
    .local v1, "secondaryIds":[Landroid/hardware/radio/ProgramSelector$Identifier;
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 416
    .local v2, "secondaryIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/broadcastradio/ProgramIdentifier;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 417
    aget-object v4, v1, v3

    invoke-static {v4}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierToHalProgramIdentifier(Landroid/hardware/radio/ProgramSelector$Identifier;)Landroid/hardware/broadcastradio/ProgramIdentifier;

    move-result-object v4

    .line 418
    .local v4, "hwId":Landroid/hardware/broadcastradio/ProgramIdentifier;
    iget v5, v4, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    if-eqz v5, :cond_0

    .line 419
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 421
    :cond_0
    aget-object v5, v1, v3

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "BcRadioAidlSrv.convert"

    const-string v7, "Invalid secondary id: %s"

    invoke-static {v6, v7, v5}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 416
    .end local v4    # "hwId":Landroid/hardware/broadcastradio/ProgramIdentifier;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 424
    .end local v3    # "i":I
    new-instance v3, Lcom/android/server/broadcastradio/aidl/ConversionUtils$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lcom/android/server/broadcastradio/aidl/ConversionUtils$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/broadcastradio/ProgramIdentifier;

    iput-object v3, v0, Landroid/hardware/broadcastradio/ProgramSelector;->secondaryIds:[Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 425
    invoke-static {v0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->isValidHalProgramSelector(Landroid/hardware/broadcastradio/ProgramSelector;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 426
    const/4 v3, 0x0

    return-object v3

    .line 428
    :cond_2
    return-object v0
.end method

.method static propertiesFromHalProperties(ILjava/lang/String;Landroid/hardware/broadcastradio/Properties;Landroid/hardware/broadcastradio/AmFmRegionConfig;[Landroid/hardware/broadcastradio/DabTableEntry;)Landroid/hardware/radio/RadioManager$ModuleProperties;
    .locals 20
    .param p0, "id"    # I
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "prop"    # Landroid/hardware/broadcastradio/Properties;
    .param p3, "amfmConfig"    # Landroid/hardware/broadcastradio/AmFmRegionConfig;
    .param p4, "dabConfig"    # [Landroid/hardware/broadcastradio/DabTableEntry;

    .line 316
    move-object/from16 v0, p2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 317
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 319
    iget-object v1, v0, Landroid/hardware/broadcastradio/Properties;->supportedIdentifierTypes:[I

    invoke-static {v1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierTypesToProgramTypes([I)[I

    move-result-object v16

    .line 321
    .local v16, "supportedProgramTypes":[I
    new-instance v2, Landroid/hardware/radio/RadioManager$ModuleProperties;

    iget-object v6, v0, Landroid/hardware/broadcastradio/Properties;->maker:Ljava/lang/String;

    iget-object v7, v0, Landroid/hardware/broadcastradio/Properties;->product:Ljava/lang/String;

    iget-object v8, v0, Landroid/hardware/broadcastradio/Properties;->version:Ljava/lang/String;

    iget-object v9, v0, Landroid/hardware/broadcastradio/Properties;->serial:Ljava/lang/String;

    .line 340
    invoke-static/range {p3 .. p3}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->amfmConfigToBands(Landroid/hardware/broadcastradio/AmFmRegionConfig;)[Landroid/hardware/radio/RadioManager$BandDescriptor;

    move-result-object v14

    iget-object v1, v0, Landroid/hardware/broadcastradio/Properties;->supportedIdentifierTypes:[I

    .line 344
    invoke-static/range {p4 .. p4}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->dabConfigFromHalDabTableEntries([Landroid/hardware/broadcastradio/DabTableEntry;)Ljava/util/Map;

    move-result-object v18

    iget-object v3, v0, Landroid/hardware/broadcastradio/Properties;->vendorInfo:[Landroid/hardware/broadcastradio/VendorKeyValue;

    .line 345
    invoke-static {v3}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->vendorInfoFromHalVendorKeyValues([Landroid/hardware/broadcastradio/VendorKeyValue;)Ljava/util/Map;

    move-result-object v19

    const/4 v5, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x1

    move/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v17, v1

    invoke-direct/range {v2 .. v19}, Landroid/hardware/radio/RadioManager$ModuleProperties;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZ[Landroid/hardware/radio/RadioManager$BandDescriptor;Z[I[ILjava/util/Map;Ljava/util/Map;)V

    .line 321
    return-object v2
.end method

.method static radioAlertFromHalAlert(Landroid/hardware/broadcastradio/Alert;)Landroid/hardware/radio/RadioAlert;
    .locals 4
    .param p0, "halAlert"    # Landroid/hardware/broadcastradio/Alert;

    .line 644
    if-nez p0, :cond_0

    .line 645
    const/4 v0, 0x0

    return-object v0

    .line 647
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/hardware/broadcastradio/Alert;->infoArray:[Landroid/hardware/broadcastradio/AlertInfo;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 648
    .local v0, "alertInfo":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/radio/RadioAlert$AlertInfo;>;"
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_0
    iget-object v2, p0, Landroid/hardware/broadcastradio/Alert;->infoArray:[Landroid/hardware/broadcastradio/AlertInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 649
    iget-object v2, p0, Landroid/hardware/broadcastradio/Alert;->infoArray:[Landroid/hardware/broadcastradio/AlertInfo;

    aget-object v2, v2, v1

    invoke-static {v2}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->alertInfoFromHalAlertInfo(Landroid/hardware/broadcastradio/AlertInfo;)Landroid/hardware/radio/RadioAlert$AlertInfo;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 648
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 655
    .end local v1    # "idx":I
    new-instance v1, Landroid/hardware/radio/RadioAlert;

    iget v2, p0, Landroid/hardware/broadcastradio/Alert;->status:I

    iget v3, p0, Landroid/hardware/broadcastradio/Alert;->messageType:I

    invoke-direct {v1, v2, v3, v0}, Landroid/hardware/radio/RadioAlert;-><init>(IILjava/util/List;)V

    return-object v1
.end method

.method static radioMetadataFromHalMetadata([Landroid/hardware/broadcastradio/Metadata;)Landroid/hardware/radio/RadioMetadata;
    .locals 6
    .param p0, "meta"    # [Landroid/hardware/broadcastradio/Metadata;

    .line 466
    new-instance v0, Landroid/hardware/radio/RadioMetadata$Builder;

    invoke-direct {v0}, Landroid/hardware/radio/RadioMetadata$Builder;-><init>()V

    .line 468
    .local v0, "builder":Landroid/hardware/radio/RadioMetadata$Builder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 469
    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/hardware/broadcastradio/Metadata;->getTag()I

    move-result v2

    .line 470
    .local v2, "tag":I
    packed-switch v2, :pswitch_data_0

    .line 527
    nop

    .line 528
    packed-switch v2, :pswitch_data_1

    .line 563
    aget-object v3, p0, v1

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "BcRadioAidlSrv.convert"

    const-string v5, "Ignored unknown metadata entry: %s with HD radio flag enabled"

    invoke-static {v4, v5, v3}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 565
    goto/16 :goto_1

    .line 559
    :pswitch_0
    aget-object v3, p0, v1

    .line 560
    invoke-virtual {v3}, Landroid/hardware/broadcastradio/Metadata;->getHdSubChannelsAvailable()I

    move-result v3

    .line 559
    const-string v4, "android.hardware.radio.metadata.HD_SUBCHANNELS_AVAILABLE"

    invoke-virtual {v0, v4, v3}, Landroid/hardware/radio/RadioMetadata$Builder;->putInt(Ljava/lang/String;I)Landroid/hardware/radio/RadioMetadata$Builder;

    .line 561
    goto/16 :goto_1

    .line 555
    :pswitch_1
    aget-object v3, p0, v1

    .line 556
    invoke-virtual {v3}, Landroid/hardware/broadcastradio/Metadata;->getHdStationNameLong()Ljava/lang/String;

    move-result-object v3

    .line 555
    const-string v4, "android.hardware.radio.metadata.HD_STATION_NAME_LONG"

    invoke-virtual {v0, v4, v3}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    .line 557
    goto/16 :goto_1

    .line 551
    :pswitch_2
    aget-object v3, p0, v1

    .line 552
    invoke-virtual {v3}, Landroid/hardware/broadcastradio/Metadata;->getHdStationNameShort()Ljava/lang/String;

    move-result-object v3

    .line 551
    const-string v4, "android.hardware.radio.metadata.HD_STATION_NAME_SHORT"

    invoke-virtual {v0, v4, v3}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    .line 553
    goto/16 :goto_1

    .line 547
    :pswitch_3
    aget-object v3, p0, v1

    .line 548
    invoke-virtual {v3}, Landroid/hardware/broadcastradio/Metadata;->getUfids()[Ljava/lang/String;

    move-result-object v3

    .line 547
    const-string v4, "android.hardware.radio.metadata.UFIDS"

    invoke-virtual {v0, v4, v3}, Landroid/hardware/radio/RadioMetadata$Builder;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    .line 549
    goto/16 :goto_1

    .line 543
    :pswitch_4
    aget-object v3, p0, v1

    .line 544
    invoke-virtual {v3}, Landroid/hardware/broadcastradio/Metadata;->getCommercial()Ljava/lang/String;

    move-result-object v3

    .line 543
    const-string v4, "android.hardware.radio.metadata.COMMERCIAL"

    invoke-virtual {v0, v4, v3}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    .line 545
    goto/16 :goto_1

    .line 539
    :pswitch_5
    aget-object v3, p0, v1

    .line 540
    invoke-virtual {v3}, Landroid/hardware/broadcastradio/Metadata;->getCommentActualText()Ljava/lang/String;

    move-result-object v3

    .line 539
    const-string v4, "android.hardware.radio.metadata.COMMENT_ACTUAL_TEXT"

    invoke-virtual {v0, v4, v3}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    .line 541
    goto/16 :goto_1

    .line 534
    :pswitch_6
    aget-object v3, p0, v1

    .line 536
    invoke-virtual {v3}, Landroid/hardware/broadcastradio/Metadata;->getCommentShortDescription()Ljava/lang/String;

    move-result-object v3

    .line 534
    const-string v4, "android.hardware.radio.metadata.COMMENT_SHORT_DESCRIPTION"

    invoke-virtual {v0, v4, v3}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    .line 537
    goto/16 :goto_1

    .line 530
    :pswitch_7
    aget-object v3, p0, v1

    .line 531
    invoke-virtual {v3}, Landroid/hardware/broadcastradio/Metadata;->getGenre()Ljava/lang/String;

    move-result-object v3

    .line 530
    const-string v4, "android.hardware.radio.metadata.GENRE"

    invoke-virtual {v0, v4, v3}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    .line 532
    goto/16 :goto_1

    .line 523
    :pswitch_8
    aget-object v3, p0, v1

    .line 524
    invoke-virtual {v3}, Landroid/hardware/broadcastradio/Metadata;->getDabComponentNameShort()Ljava/lang/String;

    move-result-object v3

    .line 523
    const-string v4, "android.hardware.radio.metadata.DAB_COMPONENT_NAME_SHORT"

    invoke-virtual {v0, v4, v3}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    .line 525
    goto/16 :goto_1

    .line 519
    :pswitch_9
    aget-object v3, p0, v1

    .line 520
    invoke-virtual {v3}, Landroid/hardware/broadcastradio/Metadata;->getDabComponentName()Ljava/lang/String;

    move-result-object v3

    .line 519
    const-string v4, "android.hardware.radio.metadata.DAB_COMPONENT_NAME"

    invoke-virtual {v0, v4, v3}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    .line 521
    goto/16 :goto_1

    .line 515
    :pswitch_a
    aget-object v3, p0, v1

    .line 516
    invoke-virtual {v3}, Landroid/hardware/broadcastradio/Metadata;->getDabServiceNameShort()Ljava/lang/String;

    move-result-object v3

    .line 515
    const-string v4, "android.hardware.radio.metadata.DAB_SERVICE_NAME_SHORT"

    invoke-virtual {v0, v4, v3}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    .line 517
    goto/16 :goto_1

    .line 511
    :pswitch_b
    aget-object v3, p0, v1

    .line 512
    invoke-virtual {v3}, Landroid/hardware/broadcastradio/Metadata;->getDabServiceName()Ljava/lang/String;

    move-result-object v3

    .line 511
    const-string v4, "android.hardware.radio.metadata.DAB_SERVICE_NAME"

    invoke-virtual {v0, v4, v3}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    .line 513
    goto/16 :goto_1

    .line 507
    :pswitch_c
    aget-object v3, p0, v1

    .line 508
    invoke-virtual {v3}, Landroid/hardware/broadcastradio/Metadata;->getDabEnsembleNameShort()Ljava/lang/String;

    move-result-object v3

    .line 507
    const-string v4, "android.hardware.radio.metadata.DAB_ENSEMBLE_NAME_SHORT"

    invoke-virtual {v0, v4, v3}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    .line 509
    goto/16 :goto_1

    .line 503
    :pswitch_d
    aget-object v3, p0, v1

    .line 504
    invoke-virtual {v3}, Landroid/hardware/broadcastradio/Metadata;->getDabEnsembleName()Ljava/lang/String;

    move-result-object v3

    .line 503
    const-string v4, "android.hardware.radio.metadata.DAB_ENSEMBLE_NAME"

    invoke-virtual {v0, v4, v3}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    .line 505
    goto/16 :goto_1

    .line 499
    :pswitch_e
    aget-object v3, p0, v1

    .line 500
    invoke-virtual {v3}, Landroid/hardware/broadcastradio/Metadata;->getProgramName()Ljava/lang/String;

    move-result-object v3

    .line 499
    const-string v4, "android.hardware.radio.metadata.PROGRAM_NAME"

    invoke-virtual {v0, v4, v3}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    .line 501
    goto :goto_1

    .line 496
    :pswitch_f
    aget-object v3, p0, v1

    invoke-virtual {v3}, Landroid/hardware/broadcastradio/Metadata;->getAlbumArt()I

    move-result v3

    const-string v4, "android.hardware.radio.metadata.ART"

    invoke-virtual {v0, v4, v3}, Landroid/hardware/radio/RadioMetadata$Builder;->putInt(Ljava/lang/String;I)Landroid/hardware/radio/RadioMetadata$Builder;

    .line 497
    goto :goto_1

    .line 493
    :pswitch_10
    aget-object v3, p0, v1

    invoke-virtual {v3}, Landroid/hardware/broadcastradio/Metadata;->getStationIcon()I

    move-result v3

    const-string v4, "android.hardware.radio.metadata.ICON"

    invoke-virtual {v0, v4, v3}, Landroid/hardware/radio/RadioMetadata$Builder;->putInt(Ljava/lang/String;I)Landroid/hardware/radio/RadioMetadata$Builder;

    .line 494
    goto :goto_1

    .line 490
    :pswitch_11
    aget-object v3, p0, v1

    invoke-virtual {v3}, Landroid/hardware/broadcastradio/Metadata;->getSongAlbum()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.hardware.radio.metadata.ALBUM"

    invoke-virtual {v0, v4, v3}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    .line 491
    goto :goto_1

    .line 487
    :pswitch_12
    aget-object v3, p0, v1

    invoke-virtual {v3}, Landroid/hardware/broadcastradio/Metadata;->getSongArtist()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.hardware.radio.metadata.ARTIST"

    invoke-virtual {v0, v4, v3}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    .line 488
    goto :goto_1

    .line 484
    :pswitch_13
    aget-object v3, p0, v1

    invoke-virtual {v3}, Landroid/hardware/broadcastradio/Metadata;->getSongTitle()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.hardware.radio.metadata.TITLE"

    invoke-virtual {v0, v4, v3}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    .line 485
    goto :goto_1

    .line 481
    :pswitch_14
    aget-object v3, p0, v1

    invoke-virtual {v3}, Landroid/hardware/broadcastradio/Metadata;->getRdsRt()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.hardware.radio.metadata.RDS_RT"

    invoke-virtual {v0, v4, v3}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    .line 482
    goto :goto_1

    .line 478
    :pswitch_15
    aget-object v3, p0, v1

    invoke-virtual {v3}, Landroid/hardware/broadcastradio/Metadata;->getRbdsPty()I

    move-result v3

    const-string v4, "android.hardware.radio.metadata.RBDS_PTY"

    invoke-virtual {v0, v4, v3}, Landroid/hardware/radio/RadioMetadata$Builder;->putInt(Ljava/lang/String;I)Landroid/hardware/radio/RadioMetadata$Builder;

    .line 479
    goto :goto_1

    .line 475
    :pswitch_16
    aget-object v3, p0, v1

    invoke-virtual {v3}, Landroid/hardware/broadcastradio/Metadata;->getRdsPty()I

    move-result v3

    const-string v4, "android.hardware.radio.metadata.RDS_PTY"

    invoke-virtual {v0, v4, v3}, Landroid/hardware/radio/RadioMetadata$Builder;->putInt(Ljava/lang/String;I)Landroid/hardware/radio/RadioMetadata$Builder;

    .line 476
    goto :goto_1

    .line 472
    :pswitch_17
    aget-object v3, p0, v1

    invoke-virtual {v3}, Landroid/hardware/broadcastradio/Metadata;->getRdsPs()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.hardware.radio.metadata.RDS_PS"

    invoke-virtual {v0, v4, v3}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    .line 473
    nop

    .line 468
    .end local v2    # "tag":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_0
    nop

    .line 575
    .end local v1    # "i":I
    invoke-virtual {v0}, Landroid/hardware/radio/RadioMetadata$Builder;->build()Landroid/hardware/radio/RadioMetadata;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
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

.method static throwOnError(Ljava/lang/RuntimeException;Ljava/lang/String;)Ljava/lang/RuntimeException;
    .locals 5
    .param p0, "halException"    # Ljava/lang/RuntimeException;
    .param p1, "action"    # Ljava/lang/String;

    .line 104
    instance-of v0, p0, Landroid/os/ServiceSpecificException;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Landroid/os/ParcelableException;

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": unknown error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    .line 108
    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/os/ServiceSpecificException;

    iget v0, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    .line 109
    .local v0, "result":I
    packed-switch v0, :pswitch_data_0

    .line 127
    new-instance v1, Landroid/os/ParcelableException;

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": unknown error ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    return-object v1

    .line 111
    :pswitch_0
    new-instance v1, Landroid/os/ParcelableException;

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": UNKNOWN_ERROR"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    return-object v1

    .line 125
    :pswitch_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": CANCELED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 123
    :pswitch_2
    new-instance v1, Landroid/os/ParcelableException;

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": TIMEOUT"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    return-object v1

    .line 121
    :pswitch_3
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": NOT_SUPPORTED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 119
    :pswitch_4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": INVALID_STATE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 117
    :pswitch_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": INVALID_ARGUMENTS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 114
    :pswitch_6
    new-instance v1, Landroid/os/ParcelableException;

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": INTERNAL_ERROR"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static tunedProgramInfoFromHalProgramInfo(Landroid/hardware/broadcastradio/ProgramInfo;)Landroid/hardware/radio/RadioManager$ProgramInfo;
    .locals 1
    .param p0, "info"    # Landroid/hardware/broadcastradio/ProgramInfo;

    .line 717
    iget-object v0, p0, Landroid/hardware/broadcastradio/ProgramInfo;->logicallyTunedTo:Landroid/hardware/broadcastradio/ProgramIdentifier;

    invoke-static {v0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->isValidLogicallyTunedTo(Landroid/hardware/broadcastradio/ProgramIdentifier;)Z

    move-result v0

    nop

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/hardware/broadcastradio/ProgramInfo;->physicallyTunedTo:Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 718
    invoke-static {v0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->isValidPhysicallyTunedTo(Landroid/hardware/broadcastradio/ProgramIdentifier;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 721
    :cond_0
    invoke-static {p0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->programInfoFromHalProgramInfo(Landroid/hardware/broadcastradio/ProgramInfo;)Landroid/hardware/radio/RadioManager$ProgramInfo;

    move-result-object v0

    return-object v0

    .line 719
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static vendorInfoFromHalVendorKeyValues([Landroid/hardware/broadcastradio/VendorKeyValue;)Ljava/util/Map;
    .locals 7
    .param p0, "info"    # [Landroid/hardware/broadcastradio/VendorKeyValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/hardware/broadcastradio/VendorKeyValue;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 177
    if-nez p0, :cond_0

    .line 178
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 181
    :cond_0
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 182
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p0, v2

    .line 183
    .local v3, "kvp":Landroid/hardware/broadcastradio/VendorKeyValue;
    iget-object v4, v3, Landroid/hardware/broadcastradio/VendorKeyValue;->key:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, v3, Landroid/hardware/broadcastradio/VendorKeyValue;->value:Ljava/lang/String;

    if-nez v4, :cond_2

    :cond_1
    goto :goto_1

    .line 188
    :cond_2
    iget-object v4, v3, Landroid/hardware/broadcastradio/VendorKeyValue;->key:Ljava/lang/String;

    iget-object v5, v3, Landroid/hardware/broadcastradio/VendorKeyValue;->value:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 184
    :goto_1
    iget-object v4, v3, Landroid/hardware/broadcastradio/VendorKeyValue;->key:Ljava/lang/String;

    iget-object v5, v3, Landroid/hardware/broadcastradio/VendorKeyValue;->value:Ljava/lang/String;

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "BcRadioAidlSrv.convert"

    const-string v6, "VendorKeyValue contains invalid entry: key = %s, value = %s"

    invoke-static {v5, v6, v4}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    nop

    .line 182
    .end local v3    # "kvp":Landroid/hardware/broadcastradio/VendorKeyValue;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 191
    :cond_3
    return-object v0
.end method

.method static vendorInfoToHalVendorKeyValues(Ljava/util/Map;)[Landroid/hardware/broadcastradio/VendorKeyValue;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Landroid/hardware/broadcastradio/VendorKeyValue;"
        }
    .end annotation

    .line 156
    .local p0, "info":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 157
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/hardware/broadcastradio/VendorKeyValue;

    return-object v0

    .line 160
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/broadcastradio/VendorKeyValue;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 162
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Landroid/hardware/broadcastradio/VendorKeyValue;

    invoke-direct {v3}, Landroid/hardware/broadcastradio/VendorKeyValue;-><init>()V

    .line 163
    .local v3, "elem":Landroid/hardware/broadcastradio/VendorKeyValue;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v3, Landroid/hardware/broadcastradio/VendorKeyValue;->key:Ljava/lang/String;

    .line 164
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v3, Landroid/hardware/broadcastradio/VendorKeyValue;->value:Ljava/lang/String;

    .line 165
    iget-object v4, v3, Landroid/hardware/broadcastradio/VendorKeyValue;->key:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, v3, Landroid/hardware/broadcastradio/VendorKeyValue;->value:Ljava/lang/String;

    if-nez v4, :cond_2

    :cond_1
    goto :goto_1

    .line 170
    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "elem":Landroid/hardware/broadcastradio/VendorKeyValue;
    goto :goto_0

    .line 166
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "elem":Landroid/hardware/broadcastradio/VendorKeyValue;
    :goto_1
    iget-object v4, v3, Landroid/hardware/broadcastradio/VendorKeyValue;->key:Ljava/lang/String;

    iget-object v5, v3, Landroid/hardware/broadcastradio/VendorKeyValue;->value:Ljava/lang/String;

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "BcRadioAidlSrv.convert"

    const-string v6, "VendorKeyValue contains invalid entry: key = %s, value = %s"

    invoke-static {v5, v6, v4}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    goto :goto_0

    .line 173
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "elem":Landroid/hardware/broadcastradio/VendorKeyValue;
    :cond_3
    new-instance v1, Lcom/android/server/broadcastradio/aidl/ConversionUtils$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/broadcastradio/VendorKeyValue;

    return-object v1
.end method
