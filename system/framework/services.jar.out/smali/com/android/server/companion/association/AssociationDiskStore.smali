.class public final Lcom/android/server/companion/association/AssociationDiskStore;
.super Ljava/lang/Object;
.source "AssociationDiskStore.java"


# static fields
.field private static final CURRENT_PERSISTENCE_VERSION:I = 0x1

.field private static final FILE_NAME:Ljava/lang/String; = "companion_device_manager.xml"

.field private static final FILE_NAME_LAST_REMOVED_ASSOCIATION:Ljava/lang/String; = "last_removed_association.txt"

.field private static final FILE_NAME_LEGACY:Ljava/lang/String; = "companion_device_manager_associations.xml"

.field private static final LEGACY_XML_ATTR_DEVICE:Ljava/lang/String; = "device"

.field private static final TAG:Ljava/lang/String; = "CDM_AssociationDiskStore"

.field private static final XML_ATTR_CUSTOM_DEVICE_ID:Ljava/lang/String; = "custom_device_id"

.field private static final XML_ATTR_DEVICE_ICON:Ljava/lang/String; = "device_icon"

.field private static final XML_ATTR_DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field private static final XML_ATTR_ID:Ljava/lang/String; = "id"

.field private static final XML_ATTR_LAST_TIME_CONNECTED:Ljava/lang/String; = "last_time_connected"

.field private static final XML_ATTR_MAC_ADDRESS:Ljava/lang/String; = "mac_address"

.field private static final XML_ATTR_MAC_ADDRESS_DEVICE_ID:Ljava/lang/String; = "mac_address_device_id"

.field private static final XML_ATTR_MAX_ID:Ljava/lang/String; = "max-id"

.field private static final XML_ATTR_NOTIFY_DEVICE_NEARBY:Ljava/lang/String; = "notify_device_nearby"

.field private static final XML_ATTR_PACKAGE:Ljava/lang/String; = "package"

.field private static final XML_ATTR_PENDING:Ljava/lang/String; = "pending"

.field private static final XML_ATTR_PERSISTENCE_VERSION:Ljava/lang/String; = "persistence-version"

.field private static final XML_ATTR_PROFILE:Ljava/lang/String; = "profile"

.field private static final XML_ATTR_REVOKED:Ljava/lang/String; = "revoked"

.field private static final XML_ATTR_SELF_MANAGED:Ljava/lang/String; = "self_managed"

.field private static final XML_ATTR_SYSTEM_DATA_SYNC_FLAGS:Ljava/lang/String; = "system_data_sync_flags"

.field private static final XML_ATTR_TIME_APPROVED:Ljava/lang/String; = "time_approved"

.field private static final XML_TAG_ASSOCIATION:Ljava/lang/String; = "association"

.field private static final XML_TAG_ASSOCIATIONS:Ljava/lang/String; = "associations"

.field private static final XML_TAG_DEVICE_ID:Ljava/lang/String; = "device_id"

.field private static final XML_TAG_STATE:Ljava/lang/String; = "state"


# instance fields
.field private final mUserIdToStorageFile:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/AtomicFile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$0QKtIp2TLTUbzaZrI1CW9x255a4(ILjava/lang/Integer;)Landroid/util/AtomicFile;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/companion/association/AssociationDiskStore;->lambda$getStorageFileForUser$2(ILjava/lang/Integer;)Landroid/util/AtomicFile;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$TnrFtwENJfNpOrWI1q61kXcsqzI(Lcom/android/server/companion/association/Associations;Ljava/io/FileOutputStream;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/companion/association/AssociationDiskStore;->lambda$writeAssociationsToFile$1(Lcom/android/server/companion/association/Associations;Ljava/io/FileOutputStream;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pfoZln9Xdz-m2W4C7yoN47XzFzE(Ljava/lang/String;Landroid/companion/AssociationInfo;Ljava/io/FileOutputStream;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/companion/association/AssociationDiskStore;->lambda$writeLastRemovedAssociation$0(Ljava/lang/String;Landroid/companion/AssociationInfo;Ljava/io/FileOutputStream;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/association/AssociationDiskStore;->mUserIdToStorageFile:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method private static byteArrayToIcon([B)Landroid/graphics/drawable/Icon;
    .locals 2
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 637
    if-nez p0, :cond_0

    .line 638
    const/4 v0, 0x0

    return-object v0

    .line 641
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 642
    .local v0, "byteStream":Ljava/io/ByteArrayInputStream;
    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createFromStream(Ljava/io/InputStream;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    return-object v1
.end method

.method private static getBaseLegacyStorageFileForUser(I)Ljava/io/File;
    .locals 3
    .param p0, "userId"    # I

    .line 422
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "companion_device_manager_associations.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getStorageFileForUser(I)Landroid/util/AtomicFile;
    .locals 3
    .param p1, "userId"    # I

    .line 393
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationDiskStore;->mUserIdToStorageFile:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/companion/association/AssociationDiskStore$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1}, Lcom/android/server/companion/association/AssociationDiskStore$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/AtomicFile;

    return-object v0
.end method

.method private static iconToByteArray(Landroid/graphics/drawable/Icon;)[B
    .locals 2
    .param p0, "deviceIcon"    # Landroid/graphics/drawable/Icon;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 627
    if-nez p0, :cond_0

    .line 628
    const/4 v0, 0x0

    return-object v0

    .line 631
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 632
    .local v0, "byteStream":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Icon;->writeToStream(Ljava/io/OutputStream;)V

    .line 633
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method private static synthetic lambda$getStorageFileForUser$2(ILjava/lang/Integer;)Landroid/util/AtomicFile;
    .locals 1
    .param p0, "userId"    # I
    .param p1, "u"    # Ljava/lang/Integer;

    .line 394
    const-string v0, "companion_device_manager.xml"

    invoke-static {p0, v0}, Lcom/android/server/companion/utils/DataStoreUtils;->createStorageFileForUser(ILjava/lang/String;)Landroid/util/AtomicFile;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$writeAssociationsToFile$1(Lcom/android/server/companion/association/Associations;Ljava/io/FileOutputStream;)V
    .locals 5
    .param p0, "associations"    # Lcom/android/server/companion/association/Associations;
    .param p1, "out"    # Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 372
    invoke-static {p1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v0

    .line 373
    .local v0, "serializer":Lcom/android/modules/utils/TypedXmlSerializer;
    const-string/jumbo v1, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 374
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v3, "UTF-8"

    invoke-interface {v0, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 375
    const/4 v1, 0x0

    const-string/jumbo v3, "state"

    invoke-interface {v0, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 376
    const-string/jumbo v4, "persistence-version"

    invoke-static {v0, v4, v2}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 378
    invoke-static {v0, p0}, Lcom/android/server/companion/association/AssociationDiskStore;->writeAssociations(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/companion/association/Associations;)V

    .line 379
    invoke-interface {v0, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 380
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 381
    return-void
.end method

.method private static synthetic lambda$writeLastRemovedAssociation$0(Ljava/lang/String;Landroid/companion/AssociationInfo;Ljava/io/FileOutputStream;)V
    .locals 2
    .param p0, "reason"    # Ljava/lang/String;
    .param p1, "redactedAssociation"    # Landroid/companion/AssociationInfo;
    .param p2, "out"    # Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 315
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 316
    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Ljava/io/FileOutputStream;->write(I)V

    .line 317
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 318
    invoke-virtual {p2, v0}, Ljava/io/FileOutputStream;->write(I)V

    .line 319
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 320
    return-void
.end method

.method private static readAssociationV0(Lcom/android/modules/utils/TypedXmlPullParser;II)Landroid/companion/AssociationInfo;
    .locals 21
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "userId"    # I
    .param p2, "associationId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 456
    move-object/from16 v0, p0

    const-string v1, "association"

    invoke-static {v0, v1}, Lcom/android/server/companion/association/AssociationDiskStore;->requireStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 458
    const-string/jumbo v1, "package"

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 459
    .local v5, "appPackage":Ljava/lang/String;
    const-string v1, "device"

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 460
    .local v1, "deviceAddress":Ljava/lang/String;
    const-string/jumbo v2, "profile"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 461
    .local v8, "profile":Ljava/lang/String;
    const-string/jumbo v2, "notify_device_nearby"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11

    .line 462
    .local v11, "notify":Z
    const-string/jumbo v2, "time_approved"

    const-wide/16 v3, 0x0

    invoke-static {v0, v2, v3, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v14

    .line 464
    .local v14, "timeApproved":J
    new-instance v2, Landroid/companion/AssociationInfo;

    .line 465
    invoke-static {v1}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v6

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide v16, 0x7fffffffffffffffL

    const/16 v18, 0x0

    move/from16 v4, p1

    move/from16 v3, p2

    invoke-direct/range {v2 .. v20}, Landroid/companion/AssociationInfo;-><init>(IILjava/lang/String;Landroid/net/MacAddress;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/companion/AssociatedDevice;ZZZZJJILandroid/graphics/drawable/Icon;Landroid/companion/DeviceId;)V

    .line 464
    return-object v2
.end method

.method private static readAssociationV1(Lcom/android/modules/utils/TypedXmlPullParser;I)Landroid/companion/AssociationInfo;
    .locals 22
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 506
    move-object/from16 v0, p0

    const-string v1, "association"

    invoke-static {v0, v1}, Lcom/android/server/companion/association/AssociationDiskStore;->requireStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 508
    const-string/jumbo v2, "id"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v4

    .line 509
    .local v4, "associationId":I
    const-string/jumbo v2, "profile"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 510
    .local v9, "profile":Ljava/lang/String;
    const-string/jumbo v2, "package"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 511
    .local v6, "appPackage":Ljava/lang/String;
    nop

    .line 512
    const-string/jumbo v2, "mac_address"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 511
    invoke-static {v2}, Lcom/android/server/companion/association/AssociationDiskStore;->stringToMacAddress(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v7

    .line 513
    .local v7, "macAddress":Landroid/net/MacAddress;
    const-string v2, "display_name"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 514
    .local v8, "displayName":Ljava/lang/String;
    const-string/jumbo v2, "self_managed"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11

    .line 515
    .local v11, "selfManaged":Z
    const-string/jumbo v2, "notify_device_nearby"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v12

    .line 516
    .local v12, "notify":Z
    const-string/jumbo v2, "revoked"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v13

    .line 517
    .local v13, "revoked":Z
    const-string/jumbo v2, "pending"

    invoke-static {v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v14

    .line 518
    .local v14, "pending":Z
    const-string/jumbo v2, "time_approved"

    move v5, v4

    .end local v4    # "associationId":I
    .local v5, "associationId":I
    const-wide/16 v3, 0x0

    invoke-static {v0, v2, v3, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v15

    .line 519
    .local v15, "timeApproved":J
    const-string/jumbo v2, "last_time_connected"

    const-wide v3, 0x7fffffffffffffffL

    invoke-static {v0, v2, v3, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v17

    .line 521
    .local v17, "lastTimeConnected":J
    const-string/jumbo v2, "system_data_sync_flags"

    const/4 v10, 0x0

    invoke-static {v0, v2, v10}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v19

    .line 523
    .local v19, "systemDataSyncFlags":I
    nop

    .line 524
    const-string v2, "device_icon"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readByteArrayAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)[B

    move-result-object v2

    .line 523
    invoke-static {v2}, Lcom/android/server/companion/association/AssociationDiskStore;->byteArrayToIcon([B)Landroid/graphics/drawable/Icon;

    move-result-object v20

    .line 527
    .local v20, "deviceIcon":Landroid/graphics/drawable/Icon;
    const/4 v2, 0x0

    move-object/from16 v21, v2

    .line 529
    .local v21, "deviceId":Landroid/companion/DeviceId;
    :goto_0
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->nextTag()I

    .line 530
    invoke-static {v0, v1}, Lcom/android/server/companion/utils/DataStoreUtils;->isEndOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 531
    nop

    .line 542
    new-instance v3, Landroid/companion/AssociationInfo;

    const/4 v10, 0x0

    move v4, v5

    move/from16 v5, p1

    .end local v5    # "associationId":I
    .restart local v4    # "associationId":I
    invoke-direct/range {v3 .. v21}, Landroid/companion/AssociationInfo;-><init>(IILjava/lang/String;Landroid/net/MacAddress;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/companion/AssociatedDevice;ZZZZJJILandroid/graphics/drawable/Icon;Landroid/companion/DeviceId;)V

    return-object v3

    .line 533
    .end local v4    # "associationId":I
    .restart local v5    # "associationId":I
    :cond_0
    move v4, v5

    .end local v5    # "associationId":I
    .restart local v4    # "associationId":I
    const-string v2, "device_id"

    invoke-static {v0, v2}, Lcom/android/server/companion/utils/DataStoreUtils;->isStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 534
    invoke-static {v0}, Lcom/android/server/companion/association/AssociationDiskStore;->readDeviceId(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/companion/DeviceId;

    move-result-object v21

    move v5, v4

    goto :goto_0

    .line 536
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " inside <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CDM_AssociationDiskStore"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    move v5, v4

    goto :goto_0
.end method

.method private readAssociationsByUser(I)Lcom/android/server/companion/association/Associations;
    .locals 7
    .param p1, "userId"    # I

    .line 219
    const-string v0, "CDM_AssociationDiskStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reading associations for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " from disk."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-direct {p0, p1}, Lcom/android/server/companion/association/AssociationDiskStore;->getStorageFileForUser(I)Landroid/util/AtomicFile;

    move-result-object v0

    .line 225
    .local v0, "file":Landroid/util/AtomicFile;
    monitor-enter v0

    .line 226
    const/4 v1, 0x0

    .line 229
    .local v1, "legacyBaseFile":Ljava/io/File;
    :try_start_0
    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 230
    invoke-static {p1}, Lcom/android/server/companion/association/AssociationDiskStore;->getBaseLegacyStorageFileForUser(I)Ljava/io/File;

    move-result-object v2

    move-object v1, v2

    .line 231
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 232
    new-instance v2, Lcom/android/server/companion/association/Associations;

    invoke-direct {v2}, Lcom/android/server/companion/association/Associations;-><init>()V

    monitor-exit v0

    return-object v2

    .line 254
    .end local v1    # "legacyBaseFile":Ljava/io/File;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 235
    .restart local v1    # "legacyBaseFile":Ljava/io/File;
    :cond_0
    new-instance v2, Landroid/util/AtomicFile;

    invoke-direct {v2, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 236
    .local v2, "readFrom":Landroid/util/AtomicFile;
    const-string v3, "associations"

    .local v3, "rootTag":Ljava/lang/String;
    goto :goto_0

    .line 238
    .end local v2    # "readFrom":Landroid/util/AtomicFile;
    .end local v3    # "rootTag":Ljava/lang/String;
    :cond_1
    move-object v2, v0

    .line 239
    .restart local v2    # "readFrom":Landroid/util/AtomicFile;
    const-string/jumbo v3, "state"

    .line 242
    .restart local v3    # "rootTag":Ljava/lang/String;
    :goto_0
    invoke-static {p1, v2, v3}, Lcom/android/server/companion/association/AssociationDiskStore;->readAssociationsFromFile(ILandroid/util/AtomicFile;Ljava/lang/String;)Lcom/android/server/companion/association/Associations;

    move-result-object v4

    .line 244
    .local v4, "associations":Lcom/android/server/companion/association/Associations;
    if-nez v1, :cond_2

    invoke-virtual {v4}, Lcom/android/server/companion/association/Associations;->getVersion()I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_3

    .line 247
    :cond_2
    invoke-direct {p0, v0, v4}, Lcom/android/server/companion/association/AssociationDiskStore;->writeAssociationsToFile(Landroid/util/AtomicFile;Lcom/android/server/companion/association/Associations;)V

    .line 249
    if-eqz v1, :cond_3

    .line 251
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 254
    .end local v1    # "legacyBaseFile":Ljava/io/File;
    .end local v2    # "readFrom":Landroid/util/AtomicFile;
    .end local v3    # "rootTag":Ljava/lang/String;
    :cond_3
    monitor-exit v0

    .line 255
    return-object v4

    .line 254
    .end local v4    # "associations":Lcom/android/server/companion/association/Associations;
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static readAssociationsFromFile(ILandroid/util/AtomicFile;Ljava/lang/String;)Lcom/android/server/companion/association/Associations;
    .locals 3
    .param p0, "userId"    # I
    .param p1, "file"    # Landroid/util/AtomicFile;
    .param p2, "rootTag"    # Ljava/lang/String;

    .line 326
    :try_start_0
    invoke-virtual {p1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    .local v0, "in":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {p0, v0, p2}, Lcom/android/server/companion/association/AssociationDiskStore;->readAssociationsFromInputStream(ILjava/io/InputStream;Ljava/lang/String;)Lcom/android/server/companion/association/Associations;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 328
    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .end local v0    # "in":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    goto :goto_2

    .line 327
    .restart local v0    # "in":Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    return-object v1

    .line 326
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    nop

    .end local p0    # "userId":I
    .end local p1    # "file":Landroid/util/AtomicFile;
    .end local p2    # "rootTag":Ljava/lang/String;
    throw v1
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 328
    .end local v0    # "in":Ljava/io/FileInputStream;
    .restart local p0    # "userId":I
    .restart local p1    # "file":Landroid/util/AtomicFile;
    .restart local p2    # "rootTag":Ljava/lang/String;
    :goto_2
    nop

    .line 329
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CDM_AssociationDiskStore"

    const-string v2, "Error while reading associations file"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 330
    new-instance v1, Lcom/android/server/companion/association/Associations;

    invoke-direct {v1}, Lcom/android/server/companion/association/Associations;-><init>()V

    return-object v1
.end method

.method public static readAssociationsFromInputStream(ILjava/io/InputStream;Ljava/lang/String;)Lcom/android/server/companion/association/Associations;
    .locals 5
    .param p0, "userId"    # I
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "rootTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 338
    invoke-static {p1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v0

    .line 339
    .local v0, "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    invoke-static {v0, p2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 341
    const-string/jumbo v1, "persistence-version"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    .line 342
    .local v1, "version":I
    new-instance v2, Lcom/android/server/companion/association/Associations;

    invoke-direct {v2}, Lcom/android/server/companion/association/Associations;-><init>()V

    .line 344
    .local v2, "associations":Lcom/android/server/companion/association/Associations;
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 350
    :goto_0
    :pswitch_0
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->nextTag()I

    .line 351
    invoke-static {v0, p2}, Lcom/android/server/companion/utils/DataStoreUtils;->isEndOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 352
    goto :goto_1

    .line 354
    :cond_0
    const-string v3, "associations"

    invoke-static {v0, v3}, Lcom/android/server/companion/utils/DataStoreUtils;->isStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 355
    invoke-static {v0, p0}, Lcom/android/server/companion/association/AssociationDiskStore;->readAssociationsV1(Lcom/android/modules/utils/TypedXmlPullParser;I)Lcom/android/server/companion/association/Associations;

    move-result-object v2

    goto :goto_0

    .line 357
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " inside <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "> for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CDM_AssociationDiskStore"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 346
    :pswitch_1
    invoke-static {v0, p0}, Lcom/android/server/companion/association/AssociationDiskStore;->readAssociationsV0(Lcom/android/modules/utils/TypedXmlPullParser;I)Lcom/android/server/companion/association/Associations;

    move-result-object v2

    .line 347
    nop

    .line 364
    :goto_1
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static readAssociationsFromPayload([BI)Lcom/android/server/companion/association/Associations;
    .locals 3
    .param p0, "payload"    # [B
    .param p1, "userId"    # I

    .line 413
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    .local v0, "in":Ljava/io/ByteArrayInputStream;
    :try_start_1
    const-string/jumbo v1, "state"

    invoke-static {p1, v0, v1}, Lcom/android/server/companion/association/AssociationDiskStore;->readAssociationsFromInputStream(ILjava/io/InputStream;Ljava/lang/String;)Lcom/android/server/companion/association/Associations;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 415
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 414
    return-object v1

    .line 415
    .end local v0    # "in":Ljava/io/ByteArrayInputStream;
    :catch_0
    move-exception v0

    goto :goto_1

    .line 413
    .restart local v0    # "in":Ljava/io/ByteArrayInputStream;
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "payload":[B
    .end local p1    # "userId":I
    :goto_0
    throw v1
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 415
    .end local v0    # "in":Ljava/io/ByteArrayInputStream;
    .restart local p0    # "payload":[B
    .restart local p1    # "userId":I
    :goto_1
    nop

    .line 416
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CDM_AssociationDiskStore"

    const-string v2, "Error while reading associations file"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 417
    new-instance v1, Lcom/android/server/companion/association/Associations;

    invoke-direct {v1}, Lcom/android/server/companion/association/Associations;-><init>()V

    return-object v1
.end method

.method private static readAssociationsV0(Lcom/android/modules/utils/TypedXmlPullParser;I)Lcom/android/server/companion/association/Associations;
    .locals 4
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 428
    const-string v0, "associations"

    invoke-static {p0, v0}, Lcom/android/server/companion/association/AssociationDiskStore;->requireStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 436
    invoke-static {p1}, Lcom/android/server/companion/utils/AssociationUtils;->getFirstAssociationIdForUser(I)I

    move-result v1

    .line 437
    .local v1, "associationId":I
    new-instance v2, Lcom/android/server/companion/association/Associations;

    invoke-direct {v2}, Lcom/android/server/companion/association/Associations;-><init>()V

    .line 438
    .local v2, "associations":Lcom/android/server/companion/association/Associations;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/companion/association/Associations;->setVersion(I)V

    .line 441
    :goto_0
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->nextTag()I

    .line 442
    invoke-static {p0, v0}, Lcom/android/server/companion/utils/DataStoreUtils;->isEndOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 448
    add-int/lit8 v0, v1, -0x1

    invoke-virtual {v2, v0}, Lcom/android/server/companion/association/Associations;->setMaxId(I)V

    .line 450
    return-object v2

    .line 443
    :cond_0
    const-string v3, "association"

    invoke-static {p0, v3}, Lcom/android/server/companion/utils/DataStoreUtils;->isStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 445
    :cond_1
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "associationId":I
    .local v3, "associationId":I
    invoke-static {p0, p1, v1}, Lcom/android/server/companion/association/AssociationDiskStore;->readAssociationV0(Lcom/android/modules/utils/TypedXmlPullParser;II)Landroid/companion/AssociationInfo;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/server/companion/association/Associations;->addAssociation(Landroid/companion/AssociationInfo;)V

    move v1, v3

    goto :goto_0
.end method

.method private static readAssociationsV1(Lcom/android/modules/utils/TypedXmlPullParser;I)Lcom/android/server/companion/association/Associations;
    .locals 5
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 474
    const-string v0, "associations"

    invoke-static {p0, v0}, Lcom/android/server/companion/association/AssociationDiskStore;->requireStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 478
    const-string/jumbo v1, "max-id"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    .line 479
    .local v1, "maxId":I
    new-instance v2, Lcom/android/server/companion/association/Associations;

    invoke-direct {v2}, Lcom/android/server/companion/association/Associations;-><init>()V

    .line 480
    .local v2, "associations":Lcom/android/server/companion/association/Associations;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/companion/association/Associations;->setVersion(I)V

    .line 483
    :goto_0
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->nextTag()I

    .line 484
    invoke-static {p0, v0}, Lcom/android/server/companion/utils/DataStoreUtils;->isEndOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 485
    nop

    .line 498
    invoke-virtual {v2, v1}, Lcom/android/server/companion/association/Associations;->setMaxId(I)V

    .line 500
    return-object v2

    .line 487
    :cond_0
    const-string v3, "association"

    invoke-static {p0, v3}, Lcom/android/server/companion/utils/DataStoreUtils;->isStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 488
    invoke-static {p0, p1}, Lcom/android/server/companion/association/AssociationDiskStore;->readAssociationV1(Lcom/android/modules/utils/TypedXmlPullParser;I)Landroid/companion/AssociationInfo;

    move-result-object v3

    .line 489
    .local v3, "association":Landroid/companion/AssociationInfo;
    invoke-virtual {v2, v3}, Lcom/android/server/companion/association/Associations;->addAssociation(Landroid/companion/AssociationInfo;)V

    .line 490
    invoke-virtual {v3}, Landroid/companion/AssociationInfo;->getId()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 491
    .end local v3    # "association":Landroid/companion/AssociationInfo;
    goto :goto_0

    .line 492
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " inside <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "> for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CDM_AssociationDiskStore"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0
.end method

.method private static readDeviceId(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/companion/DeviceId;
    .locals 3
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 549
    const-string v0, "custom_device_id"

    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 551
    .local v0, "customDeviceId":Ljava/lang/String;
    nop

    .line 552
    const-string/jumbo v1, "mac_address_device_id"

    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 551
    invoke-static {v1}, Lcom/android/server/companion/association/AssociationDiskStore;->stringToMacAddress(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v1

    .line 555
    .local v1, "macAddress":Landroid/net/MacAddress;
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->nextTag()I

    .line 557
    new-instance v2, Landroid/companion/DeviceId;

    invoke-direct {v2, v0, v1}, Landroid/companion/DeviceId;-><init>(Ljava/lang/String;Landroid/net/MacAddress;)V

    return-object v2
.end method

.method private static requireStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 616
    invoke-static {p0, p1}, Lcom/android/server/companion/utils/DataStoreUtils;->isStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 617
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Should be at the start of \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" tag"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static stringToMacAddress(Ljava/lang/String;)Landroid/net/MacAddress;
    .locals 1
    .param p0, "address"    # Ljava/lang/String;

    .line 622
    if-eqz p0, :cond_0

    invoke-static {p0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private static writeAssociation(Lorg/xmlpull/v1/XmlSerializer;Landroid/companion/AssociationInfo;)V
    .locals 6
    .param p0, "parent"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "a"    # Landroid/companion/AssociationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 573
    const/4 v0, 0x0

    const-string v1, "association"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    .line 575
    .local v2, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getId()I

    move-result v3

    const-string/jumbo v4, "id"

    invoke-static {v2, v4, v3}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 576
    const-string/jumbo v3, "profile"

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceProfile()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 577
    const-string/jumbo v3, "package"

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 578
    const-string/jumbo v3, "mac_address"

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceMacAddressAsString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 579
    const-string v3, "display_name"

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 580
    const-string/jumbo v3, "self_managed"

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->isSelfManaged()Z

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 581
    nop

    .line 582
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->isNotifyOnDeviceNearby()Z

    move-result v3

    .line 581
    const-string/jumbo v4, "notify_device_nearby"

    invoke-static {v2, v4, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 583
    const-string/jumbo v3, "revoked"

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->isRevoked()Z

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 584
    const-string/jumbo v3, "pending"

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->isPending()Z

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 585
    const-string/jumbo v3, "time_approved"

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getTimeApprovedMs()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 586
    nop

    .line 587
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getLastTimeConnectedMs()J

    move-result-wide v3

    .line 586
    const-string/jumbo v5, "last_time_connected"

    invoke-static {v2, v5, v3, v4}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 588
    const-string/jumbo v3, "system_data_sync_flags"

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getSystemDataSyncFlags()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 589
    nop

    .line 590
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/companion/association/AssociationDiskStore;->iconToByteArray(Landroid/graphics/drawable/Icon;)[B

    move-result-object v3

    .line 589
    const-string v4, "device_icon"

    invoke-static {v2, v4, v3}, Lcom/android/internal/util/XmlUtils;->writeByteArrayAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;[B)V

    .line 592
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceId()Landroid/companion/DeviceId;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 593
    invoke-static {v2, p1}, Lcom/android/server/companion/association/AssociationDiskStore;->writeDeviceId(Lorg/xmlpull/v1/XmlSerializer;Landroid/companion/AssociationInfo;)V

    .line 595
    :cond_0
    invoke-interface {v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 596
    return-void
.end method

.method private static writeAssociations(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/companion/association/Associations;)V
    .locals 5
    .param p0, "parent"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "associations"    # Lcom/android/server/companion/association/Associations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 563
    const/4 v0, 0x0

    const-string v1, "associations"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    .line 564
    .local v2, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    invoke-virtual {p1}, Lcom/android/server/companion/association/Associations;->getMaxId()I

    move-result v3

    const-string/jumbo v4, "max-id"

    invoke-static {v2, v4, v3}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 565
    invoke-virtual {p1}, Lcom/android/server/companion/association/Associations;->getAssociations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/companion/AssociationInfo;

    .line 566
    .local v4, "association":Landroid/companion/AssociationInfo;
    invoke-static {v2, v4}, Lcom/android/server/companion/association/AssociationDiskStore;->writeAssociation(Lorg/xmlpull/v1/XmlSerializer;Landroid/companion/AssociationInfo;)V

    .line 567
    .end local v4    # "association":Landroid/companion/AssociationInfo;
    goto :goto_0

    .line 568
    :cond_0
    invoke-interface {v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 569
    return-void
.end method

.method private writeAssociationsToFile(Landroid/util/AtomicFile;Lcom/android/server/companion/association/Associations;)V
    .locals 1
    .param p1, "file"    # Landroid/util/AtomicFile;
    .param p2, "associations"    # Lcom/android/server/companion/association/Associations;

    .line 371
    new-instance v0, Lcom/android/server/companion/association/AssociationDiskStore$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/android/server/companion/association/AssociationDiskStore$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/association/Associations;)V

    invoke-static {p1, v0}, Lcom/android/server/companion/utils/DataStoreUtils;->writeToFileSafely(Landroid/util/AtomicFile;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    .line 382
    return-void
.end method

.method private static writeDeviceId(Lorg/xmlpull/v1/XmlSerializer;Landroid/companion/AssociationInfo;)V
    .locals 5
    .param p0, "parent"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "a"    # Landroid/companion/AssociationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 600
    const/4 v0, 0x0

    const-string v1, "device_id"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    .line 601
    .local v2, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    nop

    .line 604
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceId()Landroid/companion/DeviceId;

    move-result-object v3

    invoke-virtual {v3}, Landroid/companion/DeviceId;->getCustomId()Ljava/lang/String;

    move-result-object v3

    .line 601
    const-string v4, "custom_device_id"

    invoke-static {v2, v4, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 606
    nop

    .line 609
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceId()Landroid/companion/DeviceId;

    move-result-object v3

    invoke-virtual {v3}, Landroid/companion/DeviceId;->getMacAddressAsString()Ljava/lang/String;

    move-result-object v3

    .line 606
    const-string/jumbo v4, "mac_address_device_id"

    invoke-static {v2, v4, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 611
    invoke-interface {v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 612
    return-void
.end method


# virtual methods
.method public getBackupPayload(I)[B
    .locals 3
    .param p1, "userId"    # I

    .line 401
    const-string v0, "CDM_AssociationDiskStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fetching stored state data for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " from disk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    invoke-direct {p0, p1}, Lcom/android/server/companion/association/AssociationDiskStore;->getStorageFileForUser(I)Landroid/util/AtomicFile;

    move-result-object v0

    .line 404
    .local v0, "file":Landroid/util/AtomicFile;
    monitor-enter v0

    .line 405
    :try_start_0
    invoke-static {v0}, Lcom/android/server/companion/utils/DataStoreUtils;->fileToByteArray(Landroid/util/AtomicFile;)[B

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 406
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public readAssociationsByUsers(Ljava/util/List;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/companion/association/Associations;",
            ">;"
        }
    .end annotation

    .line 202
    .local p1, "userIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 203
    .local v0, "userToAssociationsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/companion/association/Associations;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 204
    .local v2, "userId":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/android/server/companion/association/AssociationDiskStore;->readAssociationsByUser(I)Lcom/android/server/companion/association/Associations;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .end local v2    # "userId":I
    goto :goto_0

    .line 206
    :cond_0
    return-object v0
.end method

.method public readLastRemovedAssociation(I)Ljava/lang/String;
    .locals 9
    .param p1, "userId"    # I

    .line 277
    const-string v0, " for user="

    const-string v1, "CDM_AssociationDiskStore"

    const-string/jumbo v2, "last_removed_association.txt"

    invoke-static {p1, v2}, Lcom/android/server/companion/utils/DataStoreUtils;->createStorageFileForUser(ILjava/lang/String;)Landroid/util/AtomicFile;

    move-result-object v2

    .line 279
    .local v2, "file":Landroid/util/AtomicFile;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    .local v5, "fis":Ljava/io/FileInputStream;
    :goto_0
    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileInputStream;->read()I

    move-result v6

    move v7, v6

    .local v7, "c":I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_0

    .line 283
    int-to-char v6, v7

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 281
    .end local v7    # "c":I
    :catchall_0
    move-exception v6

    goto :goto_1

    .line 285
    .restart local v7    # "c":I
    :cond_0
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 286
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 287
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 286
    return-object v6

    .line 290
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v7    # "c":I
    :catch_0
    move-exception v5

    goto :goto_3

    .line 287
    :catch_1
    move-exception v5

    goto :goto_4

    .line 281
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :goto_1
    if-eqz v5, :cond_1

    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v7

    :try_start_4
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    nop

    .end local v2    # "file":Landroid/util/AtomicFile;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local p0    # "this":Lcom/android/server/companion/association/AssociationDiskStore;
    .end local p1    # "userId":I
    throw v6
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 290
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "file":Landroid/util/AtomicFile;
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    .restart local p0    # "this":Lcom/android/server/companion/association/AssociationDiskStore;
    .restart local p1    # "userId":I
    :goto_3
    nop

    .line 291
    .local v5, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t read file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    return-object v4

    .line 287
    .end local v5    # "e":Ljava/io/IOException;
    :goto_4
    nop

    .line 288
    .local v5, "e":Ljava/io/FileNotFoundException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "File "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " doesn\'t exist."

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    return-object v4
.end method

.method public writeAssociationsForUser(ILcom/android/server/companion/association/Associations;)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "associations"    # Lcom/android/server/companion/association/Associations;

    .line 263
    const-string v0, "CDM_AssociationDiskStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing associations for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to disk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-direct {p0, p1}, Lcom/android/server/companion/association/AssociationDiskStore;->getStorageFileForUser(I)Landroid/util/AtomicFile;

    move-result-object v0

    .line 268
    .local v0, "file":Landroid/util/AtomicFile;
    monitor-enter v0

    .line 269
    :try_start_0
    invoke-direct {p0, v0, p2}, Lcom/android/server/companion/association/AssociationDiskStore;->writeAssociationsToFile(Landroid/util/AtomicFile;Lcom/android/server/companion/association/Associations;)V

    .line 270
    monitor-exit v0

    .line 271
    return-void

    .line 270
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public writeLastRemovedAssociation(Landroid/companion/AssociationInfo;Ljava/lang/String;)V
    .locals 4
    .param p1, "association"    # Landroid/companion/AssociationInfo;
    .param p2, "reason"    # Ljava/lang/String;

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Writing last removed association="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to disk..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDM_AssociationDiskStore"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    new-instance v0, Landroid/companion/AssociationInfo$Builder;

    invoke-direct {v0, p1}, Landroid/companion/AssociationInfo$Builder;-><init>(Landroid/companion/AssociationInfo;)V

    .line 304
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/companion/AssociationInfo$Builder;->setDeviceMacAddress(Landroid/net/MacAddress;)Landroid/companion/AssociationInfo$Builder;

    move-result-object v0

    .line 307
    .local v0, "builder":Landroid/companion/AssociationInfo$Builder;
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_0

    .line 308
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/companion/AssociationInfo$Builder;->setDisplayName(Ljava/lang/CharSequence;)Landroid/companion/AssociationInfo$Builder;

    .line 310
    :cond_0
    invoke-virtual {v0}, Landroid/companion/AssociationInfo$Builder;->build()Landroid/companion/AssociationInfo;

    move-result-object v1

    .line 312
    .local v1, "redactedAssociation":Landroid/companion/AssociationInfo;
    nop

    .line 313
    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v2

    .line 312
    const-string/jumbo v3, "last_removed_association.txt"

    invoke-static {v2, v3}, Lcom/android/server/companion/utils/DataStoreUtils;->createStorageFileForUser(ILjava/lang/String;)Landroid/util/AtomicFile;

    move-result-object v2

    .line 314
    .local v2, "file":Landroid/util/AtomicFile;
    new-instance v3, Lcom/android/server/companion/association/AssociationDiskStore$$ExternalSyntheticLambda2;

    invoke-direct {v3, p2, v1}, Lcom/android/server/companion/association/AssociationDiskStore$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Landroid/companion/AssociationInfo;)V

    invoke-static {v2, v3}, Lcom/android/server/companion/utils/DataStoreUtils;->writeToFileSafely(Landroid/util/AtomicFile;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    .line 321
    return-void
.end method
