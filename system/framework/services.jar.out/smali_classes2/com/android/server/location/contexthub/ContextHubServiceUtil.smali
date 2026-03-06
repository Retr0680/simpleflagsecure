.class Lcom/android/server/location/contexthub/ContextHubServiceUtil;
.super Ljava/lang/Object;
.source "ContextHubServiceUtil.java"


# static fields
.field private static final CONTEXT_HUB_PERMISSION:Ljava/lang/String; = "android.permission.ACCESS_CONTEXT_HUB"

.field private static final DATE_FORMAT:Ljava/lang/String; = "MM/dd HH:mm:ss.SSS"

.field private static final DATE_FORMATTER:Ljava/time/format/DateTimeFormatter;

.field private static final HOST_ENDPOINT_BROADCAST:C = '\uffff'

.field private static final TAG:Ljava/lang/String; = "ContextHubServiceUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 74
    const-string v0, "MM/dd HH:mm:ss.SSS"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    .line 75
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatter;->withZone(Ljava/time/ZoneId;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->DATE_FORMATTER:Ljava/time/format/DateTimeFormatter;

    .line 74
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkPermissions(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 332
    const-string v0, "android.permission.ACCESS_CONTEXT_HUB"

    const-string v1, "ACCESS_CONTEXT_HUB permission required to use Context Hub"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    return-void
.end method

.method static convertHalEndpointInfo(Landroid/hardware/contexthub/HubEndpointInfo;)Landroid/hardware/contexthub/EndpointInfo;
    .locals 4
    .param p0, "info"    # Landroid/hardware/contexthub/HubEndpointInfo;

    .line 437
    nop

    .line 438
    invoke-virtual {p0}, Landroid/hardware/contexthub/HubEndpointInfo;->getIdentifier()Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;->getEndpoint()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/hardware/contexthub/HubEndpointInfo;->getIdentifier()Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;->getHub()J

    move-result-wide v2

    .line 437
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->createHalEndpointInfo(Landroid/hardware/contexthub/HubEndpointInfo;JJ)Landroid/hardware/contexthub/EndpointInfo;

    move-result-object v0

    return-object v0
.end method

.method static copyToByteArrayList([BLjava/util/ArrayList;)V
    .locals 4
    .param p0, "inputArray"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 102
    .local p1, "outputArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 103
    array-length v0, p0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 104
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-byte v2, p0, v1

    .line 105
    .local v2, "element":B
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    .end local v2    # "element":B
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 107
    :cond_0
    return-void
.end method

.method static createAidlContextHubMessage(SLandroid/hardware/location/NanoAppMessage;)Landroid/hardware/contexthub/ContextHubMessage;
    .locals 3
    .param p0, "hostEndPoint"    # S
    .param p1, "message"    # Landroid/hardware/location/NanoAppMessage;

    .line 280
    new-instance v0, Landroid/hardware/contexthub/ContextHubMessage;

    invoke-direct {v0}, Landroid/hardware/contexthub/ContextHubMessage;-><init>()V

    .line 283
    .local v0, "aidlMessage":Landroid/hardware/contexthub/ContextHubMessage;
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getNanoAppId()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/hardware/contexthub/ContextHubMessage;->nanoappId:J

    .line 284
    int-to-char v1, p0

    iput-char v1, v0, Landroid/hardware/contexthub/ContextHubMessage;->hostEndPoint:C

    .line 285
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getMessageType()I

    move-result v1

    iput v1, v0, Landroid/hardware/contexthub/ContextHubMessage;->messageType:I

    .line 286
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getMessageBody()[B

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/contexthub/ContextHubMessage;->messageBody:[B

    .line 288
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, v0, Landroid/hardware/contexthub/ContextHubMessage;->permissions:[Ljava/lang/String;

    .line 289
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->isReliable()Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/contexthub/ContextHubMessage;->isReliable:Z

    .line 290
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getMessageSequenceNumber()I

    move-result v1

    iput v1, v0, Landroid/hardware/contexthub/ContextHubMessage;->messageSequenceNumber:I

    .line 292
    return-object v0
.end method

.method static createAidlNanoAppBinary(Landroid/hardware/location/NanoAppBinary;)Landroid/hardware/contexthub/NanoappBinary;
    .locals 4
    .param p0, "nanoAppBinary"    # Landroid/hardware/location/NanoAppBinary;

    .line 184
    const-string v0, "ContextHubServiceUtil"

    new-instance v1, Landroid/hardware/contexthub/NanoappBinary;

    invoke-direct {v1}, Landroid/hardware/contexthub/NanoappBinary;-><init>()V

    .line 187
    .local v1, "aidlNanoAppBinary":Landroid/hardware/contexthub/NanoappBinary;
    invoke-virtual {p0}, Landroid/hardware/location/NanoAppBinary;->getNanoAppId()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/hardware/contexthub/NanoappBinary;->nanoappId:J

    .line 188
    invoke-virtual {p0}, Landroid/hardware/location/NanoAppBinary;->getNanoAppVersion()I

    move-result v2

    iput v2, v1, Landroid/hardware/contexthub/NanoappBinary;->nanoappVersion:I

    .line 189
    invoke-virtual {p0}, Landroid/hardware/location/NanoAppBinary;->getFlags()I

    move-result v2

    iput v2, v1, Landroid/hardware/contexthub/NanoappBinary;->flags:I

    .line 190
    invoke-virtual {p0}, Landroid/hardware/location/NanoAppBinary;->getTargetChreApiMajorVersion()B

    move-result v2

    iput-byte v2, v1, Landroid/hardware/contexthub/NanoappBinary;->targetChreApiMajorVersion:B

    .line 191
    invoke-virtual {p0}, Landroid/hardware/location/NanoAppBinary;->getTargetChreApiMinorVersion()B

    move-result v2

    iput-byte v2, v1, Landroid/hardware/contexthub/NanoappBinary;->targetChreApiMinorVersion:B

    .line 193
    const/4 v2, 0x0

    new-array v2, v2, [B

    iput-object v2, v1, Landroid/hardware/contexthub/NanoappBinary;->customBinary:[B

    .line 198
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/location/NanoAppBinary;->getBinaryNoHeader()[B

    move-result-object v2

    iput-object v2, v1, Landroid/hardware/contexthub/NanoappBinary;->customBinary:[B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_0
    goto :goto_3

    .line 201
    :catch_0
    move-exception v2

    goto :goto_1

    .line 199
    :catch_1
    move-exception v2

    goto :goto_2

    .line 201
    :goto_1
    nop

    .line 202
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v3, "NanoApp binary was null"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 199
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :goto_2
    nop

    .line 200
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v2}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    goto :goto_0

    .line 205
    :goto_3
    return-object v1
.end method

.method static createContextHubInfoMap(Ljava/util/List;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/location/ContextHubInfo;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/location/ContextHubInfo;",
            ">;"
        }
    .end annotation

    .line 86
    .local p0, "hubList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/location/ContextHubInfo;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 87
    .local v0, "contextHubIdToInfoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/hardware/location/ContextHubInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/location/ContextHubInfo;

    .line 88
    .local v2, "contextHubInfo":Landroid/hardware/location/ContextHubInfo;
    invoke-virtual {v2}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .end local v2    # "contextHubInfo":Landroid/hardware/location/ContextHubInfo;
    goto :goto_0

    .line 91
    :cond_0
    return-object v0
.end method

.method static createHalEndpointInfo(Landroid/hardware/contexthub/HubEndpointInfo;JJ)Landroid/hardware/contexthub/EndpointInfo;
    .locals 8
    .param p0, "info"    # Landroid/hardware/contexthub/HubEndpointInfo;
    .param p1, "endpointId"    # J
    .param p3, "hubId"    # J

    .line 453
    new-instance v0, Landroid/hardware/contexthub/EndpointInfo;

    invoke-direct {v0}, Landroid/hardware/contexthub/EndpointInfo;-><init>()V

    .line 454
    .local v0, "outputInfo":Landroid/hardware/contexthub/EndpointInfo;
    new-instance v1, Landroid/hardware/contexthub/EndpointId;

    invoke-direct {v1}, Landroid/hardware/contexthub/EndpointId;-><init>()V

    iput-object v1, v0, Landroid/hardware/contexthub/EndpointInfo;->id:Landroid/hardware/contexthub/EndpointId;

    .line 455
    iget-object v1, v0, Landroid/hardware/contexthub/EndpointInfo;->id:Landroid/hardware/contexthub/EndpointId;

    iput-wide p1, v1, Landroid/hardware/contexthub/EndpointId;->id:J

    .line 456
    iget-object v1, v0, Landroid/hardware/contexthub/EndpointInfo;->id:Landroid/hardware/contexthub/EndpointId;

    iput-wide p3, v1, Landroid/hardware/contexthub/EndpointId;->hubId:J

    .line 457
    invoke-virtual {p0}, Landroid/hardware/contexthub/HubEndpointInfo;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/contexthub/EndpointInfo;->name:Ljava/lang/String;

    .line 458
    invoke-virtual {p0}, Landroid/hardware/contexthub/HubEndpointInfo;->getVersion()I

    move-result v1

    iput v1, v0, Landroid/hardware/contexthub/EndpointInfo;->version:I

    .line 459
    invoke-virtual {p0}, Landroid/hardware/contexthub/HubEndpointInfo;->getTag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/contexthub/EndpointInfo;->tag:Ljava/lang/String;

    .line 460
    invoke-virtual {p0}, Landroid/hardware/contexthub/HubEndpointInfo;->getRequiredPermissions()Ljava/util/Collection;

    move-result-object v1

    .line 461
    .local v1, "permissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, v0, Landroid/hardware/contexthub/EndpointInfo;->requiredPermissions:[Ljava/lang/String;

    .line 462
    invoke-virtual {p0}, Landroid/hardware/contexthub/HubEndpointInfo;->getServiceInfoCollection()Ljava/util/Collection;

    move-result-object v2

    .line 463
    .local v2, "services":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/contexthub/HubServiceInfo;>;"
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    new-array v3, v3, [Landroid/hardware/contexthub/Service;

    iput-object v3, v0, Landroid/hardware/contexthub/EndpointInfo;->services:[Landroid/hardware/contexthub/Service;

    .line 464
    const/4 v3, 0x0

    .line 465
    .local v3, "i":I
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/contexthub/HubServiceInfo;

    .line 466
    .local v5, "service":Landroid/hardware/contexthub/HubServiceInfo;
    iget-object v6, v0, Landroid/hardware/contexthub/EndpointInfo;->services:[Landroid/hardware/contexthub/Service;

    new-instance v7, Landroid/hardware/contexthub/Service;

    invoke-direct {v7}, Landroid/hardware/contexthub/Service;-><init>()V

    aput-object v7, v6, v3

    .line 467
    iget-object v6, v0, Landroid/hardware/contexthub/EndpointInfo;->services:[Landroid/hardware/contexthub/Service;

    aget-object v6, v6, v3

    invoke-virtual {v5}, Landroid/hardware/contexthub/HubServiceInfo;->getFormat()I

    move-result v7

    iput v7, v6, Landroid/hardware/contexthub/Service;->format:I

    .line 468
    iget-object v6, v0, Landroid/hardware/contexthub/EndpointInfo;->services:[Landroid/hardware/contexthub/Service;

    aget-object v6, v6, v3

    invoke-virtual {v5}, Landroid/hardware/contexthub/HubServiceInfo;->getServiceDescriptor()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/hardware/contexthub/Service;->serviceDescriptor:Ljava/lang/String;

    .line 469
    iget-object v6, v0, Landroid/hardware/contexthub/EndpointInfo;->services:[Landroid/hardware/contexthub/Service;

    aget-object v6, v6, v3

    invoke-virtual {v5}, Landroid/hardware/contexthub/HubServiceInfo;->getMajorVersion()I

    move-result v7

    iput v7, v6, Landroid/hardware/contexthub/Service;->majorVersion:I

    .line 470
    iget-object v6, v0, Landroid/hardware/contexthub/EndpointInfo;->services:[Landroid/hardware/contexthub/Service;

    aget-object v6, v6, v3

    invoke-virtual {v5}, Landroid/hardware/contexthub/HubServiceInfo;->getMinorVersion()I

    move-result v7

    iput v7, v6, Landroid/hardware/contexthub/Service;->minorVersion:I

    .line 471
    nop

    .end local v5    # "service":Landroid/hardware/contexthub/HubServiceInfo;
    add-int/lit8 v3, v3, 0x1

    .line 472
    goto :goto_0

    .line 473
    :cond_0
    return-object v0
.end method

.method static createHalMessage(Landroid/hardware/contexthub/HubMessage;)Landroid/hardware/contexthub/Message;
    .locals 2
    .param p0, "message"    # Landroid/hardware/contexthub/HubMessage;

    .line 484
    new-instance v0, Landroid/hardware/contexthub/Message;

    invoke-direct {v0}, Landroid/hardware/contexthub/Message;-><init>()V

    .line 485
    .local v0, "outMessage":Landroid/hardware/contexthub/Message;
    invoke-virtual {p0}, Landroid/hardware/contexthub/HubMessage;->isResponseRequired()Z

    move-result v1

    iput v1, v0, Landroid/hardware/contexthub/Message;->flags:I

    .line 486
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, v0, Landroid/hardware/contexthub/Message;->permissions:[Ljava/lang/String;

    .line 487
    invoke-virtual {p0}, Landroid/hardware/contexthub/HubMessage;->getMessageSequenceNumber()I

    move-result v1

    iput v1, v0, Landroid/hardware/contexthub/Message;->sequenceNumber:I

    .line 488
    invoke-virtual {p0}, Landroid/hardware/contexthub/HubMessage;->getMessageType()I

    move-result v1

    iput v1, v0, Landroid/hardware/contexthub/Message;->type:I

    .line 489
    invoke-virtual {p0}, Landroid/hardware/contexthub/HubMessage;->getMessageBody()[B

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/contexthub/Message;->content:[B

    .line 490
    return-object v0
.end method

.method static createHidlContextHubMessage(SLandroid/hardware/location/NanoAppMessage;)Landroid/hardware/contexthub/V1_0/ContextHubMsg;
    .locals 3
    .param p0, "hostEndPoint"    # S
    .param p1, "message"    # Landroid/hardware/location/NanoAppMessage;

    .line 260
    new-instance v0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;

    invoke-direct {v0}, Landroid/hardware/contexthub/V1_0/ContextHubMsg;-><init>()V

    .line 262
    .local v0, "hidlMessage":Landroid/hardware/contexthub/V1_0/ContextHubMsg;
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getNanoAppId()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->appName:J

    .line 263
    iput-short p0, v0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->hostEndPoint:S

    .line 264
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getMessageType()I

    move-result v1

    iput v1, v0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->msgType:I

    .line 265
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getMessageBody()[B

    move-result-object v1

    iget-object v2, v0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->msg:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->copyToByteArrayList([BLjava/util/ArrayList;)V

    .line 267
    return-object v0
.end method

.method static createHidlNanoAppBinary(Landroid/hardware/location/NanoAppBinary;)Landroid/hardware/contexthub/V1_0/NanoAppBinary;
    .locals 4
    .param p0, "nanoAppBinary"    # Landroid/hardware/location/NanoAppBinary;

    .line 152
    const-string v0, "ContextHubServiceUtil"

    new-instance v1, Landroid/hardware/contexthub/V1_0/NanoAppBinary;

    invoke-direct {v1}, Landroid/hardware/contexthub/V1_0/NanoAppBinary;-><init>()V

    .line 155
    .local v1, "hidlNanoAppBinary":Landroid/hardware/contexthub/V1_0/NanoAppBinary;
    invoke-virtual {p0}, Landroid/hardware/location/NanoAppBinary;->getNanoAppId()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->appId:J

    .line 156
    invoke-virtual {p0}, Landroid/hardware/location/NanoAppBinary;->getNanoAppVersion()I

    move-result v2

    iput v2, v1, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->appVersion:I

    .line 157
    invoke-virtual {p0}, Landroid/hardware/location/NanoAppBinary;->getFlags()I

    move-result v2

    iput v2, v1, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->flags:I

    .line 158
    invoke-virtual {p0}, Landroid/hardware/location/NanoAppBinary;->getTargetChreApiMajorVersion()B

    move-result v2

    iput-byte v2, v1, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->targetChreApiMajorVersion:B

    .line 159
    invoke-virtual {p0}, Landroid/hardware/location/NanoAppBinary;->getTargetChreApiMinorVersion()B

    move-result v2

    iput-byte v2, v1, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->targetChreApiMinorVersion:B

    .line 164
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/location/NanoAppBinary;->getBinaryNoHeader()[B

    move-result-object v2

    iget-object v3, v1, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->customBinary:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->copyToByteArrayList([BLjava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_0
    goto :goto_3

    .line 167
    :catch_0
    move-exception v2

    goto :goto_1

    .line 165
    :catch_1
    move-exception v2

    goto :goto_2

    .line 167
    :goto_1
    nop

    .line 168
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v3, "NanoApp binary was null"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 165
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :goto_2
    nop

    .line 166
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v2}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    goto :goto_0

    .line 171
    :goto_3
    return-object v1
.end method

.method static createHubMessage(Landroid/hardware/contexthub/Message;)Landroid/hardware/contexthub/HubMessage;
    .locals 4
    .param p0, "message"    # Landroid/hardware/contexthub/Message;

    .line 501
    iget v0, p0, Landroid/hardware/contexthub/Message;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 502
    .local v1, "isReliable":Z
    :goto_0
    new-instance v0, Landroid/hardware/contexthub/HubMessage$Builder;

    iget v2, p0, Landroid/hardware/contexthub/Message;->type:I

    iget-object v3, p0, Landroid/hardware/contexthub/Message;->content:[B

    invoke-direct {v0, v2, v3}, Landroid/hardware/contexthub/HubMessage$Builder;-><init>(I[B)V

    .line 503
    invoke-virtual {v0, v1}, Landroid/hardware/contexthub/HubMessage$Builder;->setResponseRequired(Z)Landroid/hardware/contexthub/HubMessage$Builder;

    move-result-object v0

    .line 504
    invoke-virtual {v0}, Landroid/hardware/contexthub/HubMessage$Builder;->build()Landroid/hardware/contexthub/HubMessage;

    move-result-object v0

    .line 505
    .local v0, "outMessage":Landroid/hardware/contexthub/HubMessage;
    iget v2, p0, Landroid/hardware/contexthub/Message;->sequenceNumber:I

    invoke-virtual {v0, v2}, Landroid/hardware/contexthub/HubMessage;->setMessageSequenceNumber(I)V

    .line 506
    return-object v0
.end method

.method static createNanoAppMessage(Landroid/hardware/contexthub/ContextHubMessage;)Landroid/hardware/location/NanoAppMessage;
    .locals 7
    .param p0, "message"    # Landroid/hardware/contexthub/ContextHubMessage;

    .line 319
    iget-wide v0, p0, Landroid/hardware/contexthub/ContextHubMessage;->nanoappId:J

    iget v2, p0, Landroid/hardware/contexthub/ContextHubMessage;->messageType:I

    iget-object v3, p0, Landroid/hardware/contexthub/ContextHubMessage;->messageBody:[B

    iget-char v4, p0, Landroid/hardware/contexthub/ContextHubMessage;->hostEndPoint:C

    const v5, 0xffff

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iget-boolean v5, p0, Landroid/hardware/contexthub/ContextHubMessage;->isReliable:Z

    iget v6, p0, Landroid/hardware/contexthub/ContextHubMessage;->messageSequenceNumber:I

    invoke-static/range {v0 .. v6}, Landroid/hardware/location/NanoAppMessage;->createMessageFromNanoApp(JI[BZZI)Landroid/hardware/location/NanoAppMessage;

    move-result-object v0

    return-object v0
.end method

.method static createNanoAppMessage(Landroid/hardware/contexthub/V1_0/ContextHubMsg;)Landroid/hardware/location/NanoAppMessage;
    .locals 6
    .param p0, "message"    # Landroid/hardware/contexthub/V1_0/ContextHubMsg;

    .line 303
    iget-object v0, p0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->msg:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->createPrimitiveByteArray(Ljava/util/ArrayList;)[B

    move-result-object v0

    .line 305
    .local v0, "messageArray":[B
    iget-wide v1, p0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->appName:J

    iget v3, p0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->msgType:I

    iget-short v4, p0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->hostEndPoint:S

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-static {v1, v2, v3, v0, v4}, Landroid/hardware/location/NanoAppMessage;->createMessageFromNanoApp(JI[BZ)Landroid/hardware/location/NanoAppMessage;

    move-result-object v1

    return-object v1
.end method

.method static createNanoAppStateList(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/contexthub/V1_2/HubAppInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/hardware/location/NanoAppState;",
            ">;"
        }
    .end annotation

    .line 217
    .local p0, "nanoAppInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/contexthub/V1_2/HubAppInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v0, "nanoAppStateList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/location/NanoAppState;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/contexthub/V1_2/HubAppInfo;

    .line 219
    .local v2, "appInfo":Landroid/hardware/contexthub/V1_2/HubAppInfo;
    new-instance v3, Landroid/hardware/location/NanoAppState;

    iget-object v4, v2, Landroid/hardware/contexthub/V1_2/HubAppInfo;->info_1_0:Landroid/hardware/contexthub/V1_0/HubAppInfo;

    iget-wide v4, v4, Landroid/hardware/contexthub/V1_0/HubAppInfo;->appId:J

    iget-object v6, v2, Landroid/hardware/contexthub/V1_2/HubAppInfo;->info_1_0:Landroid/hardware/contexthub/V1_0/HubAppInfo;

    iget v6, v6, Landroid/hardware/contexthub/V1_0/HubAppInfo;->version:I

    iget-object v7, v2, Landroid/hardware/contexthub/V1_2/HubAppInfo;->info_1_0:Landroid/hardware/contexthub/V1_0/HubAppInfo;

    iget-boolean v7, v7, Landroid/hardware/contexthub/V1_0/HubAppInfo;->enabled:Z

    iget-object v8, v2, Landroid/hardware/contexthub/V1_2/HubAppInfo;->permissions:Ljava/util/ArrayList;

    invoke-direct/range {v3 .. v8}, Landroid/hardware/location/NanoAppState;-><init>(JIZLjava/util/List;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    .end local v2    # "appInfo":Landroid/hardware/contexthub/V1_2/HubAppInfo;
    goto :goto_0

    .line 224
    :cond_0
    return-object v0
.end method

.method static createNanoAppStateList([Landroid/hardware/contexthub/NanoappInfo;)Ljava/util/List;
    .locals 14
    .param p0, "nanoAppInfoList"    # [Landroid/hardware/contexthub/NanoappInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/hardware/contexthub/NanoappInfo;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/location/NanoAppState;",
            ">;"
        }
    .end annotation

    .line 236
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .local v0, "nanoAppStateList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/location/NanoAppState;>;"
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p0, v3

    .line 238
    .local v4, "appInfo":Landroid/hardware/contexthub/NanoappInfo;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v5

    .line 239
    .local v12, "rpcServiceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/location/NanoAppRpcService;>;"
    iget-object v5, v4, Landroid/hardware/contexthub/NanoappInfo;->rpcServices:[Landroid/hardware/contexthub/NanoappRpcService;

    array-length v6, v5

    move v7, v2

    :goto_1
    if-ge v7, v6, :cond_0

    aget-object v8, v5, v7

    .line 240
    .local v8, "service":Landroid/hardware/contexthub/NanoappRpcService;
    new-instance v9, Landroid/hardware/location/NanoAppRpcService;

    iget-wide v10, v8, Landroid/hardware/contexthub/NanoappRpcService;->id:J

    iget v13, v8, Landroid/hardware/contexthub/NanoappRpcService;->version:I

    invoke-direct {v9, v10, v11, v13}, Landroid/hardware/location/NanoAppRpcService;-><init>(JI)V

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    .end local v8    # "service":Landroid/hardware/contexthub/NanoappRpcService;
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 242
    :cond_0
    new-instance v6, Landroid/hardware/location/NanoAppState;

    iget-wide v7, v4, Landroid/hardware/contexthub/NanoappInfo;->nanoappId:J

    iget v9, v4, Landroid/hardware/contexthub/NanoappInfo;->nanoappVersion:I

    iget-boolean v10, v4, Landroid/hardware/contexthub/NanoappInfo;->enabled:Z

    new-instance v11, Ljava/util/ArrayList;

    iget-object v5, v4, Landroid/hardware/contexthub/NanoappInfo;->permissions:[Ljava/lang/String;

    .line 244
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v11, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct/range {v6 .. v12}, Landroid/hardware/location/NanoAppState;-><init>(JIZLjava/util/List;Ljava/util/List;)V

    .line 242
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    .end local v4    # "appInfo":Landroid/hardware/contexthub/NanoappInfo;
    .end local v12    # "rpcServiceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/location/NanoAppRpcService;>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 248
    :cond_1
    return-object v0
.end method

.method static createPrimitiveByteArray(Ljava/util/ArrayList;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)[B"
        }
    .end annotation

    .line 117
    .local p0, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [B

    .line 118
    .local v0, "primitiveArray":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 119
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 122
    .end local v1    # "i":I
    return-object v0
.end method

.method static createPrimitiveIntArray(Ljava/util/Collection;)[I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 132
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 134
    .local v0, "primitiveArray":[I
    const/4 v1, 0x0

    .line 135
    .local v1, "i":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 136
    .local v3, "contextHubId":I
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .local v4, "i":I
    aput v3, v0, v1

    .line 137
    .end local v3    # "contextHubId":I
    move v1, v4

    goto :goto_0

    .line 139
    .end local v4    # "i":I
    .restart local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method static formatDateFromTimestamp(J)Ljava/lang/String;
    .locals 2
    .param p0, "timeStampInMs"    # J

    .line 426
    sget-object v0, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->DATE_FORMATTER:Ljava/time/format/DateTimeFormatter;

    invoke-static {p0, p1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static hasPermissions(Landroid/content/Context;IILjava/util/Collection;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 579
    .local p3, "permissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 580
    .local v1, "permission":Ljava/lang/String;
    invoke-virtual {p0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_0

    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no permission for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ContextHubServiceUtil"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    const/4 v0, 0x0

    return v0

    .line 580
    :cond_0
    nop

    .line 584
    .end local v1    # "permission":Ljava/lang/String;
    goto :goto_0

    .line 585
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method static notePermissions(Landroid/app/AppOpsManager;ILjava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)Z
    .locals 9
    .param p0, "appOpsManager"    # Landroid/app/AppOpsManager;
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p5, "noteMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/AppOpsManager;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 608
    .local p4, "permissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 609
    .local v1, "permission":Ljava/lang/String;
    invoke-static {v1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v3

    .line 610
    .local v3, "opCode":I
    const/4 v2, -0x1

    if-eq v3, v2, :cond_1

    .line 612
    const/4 v8, 0x0

    move-object v2, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p5

    .end local p0    # "appOpsManager":Landroid/app/AppOpsManager;
    .end local p1    # "uid":I
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "attributionTag":Ljava/lang/String;
    .end local p5    # "noteMessage":Ljava/lang/String;
    .local v2, "appOpsManager":Landroid/app/AppOpsManager;
    .local v4, "uid":I
    .local v5, "packageName":Ljava/lang/String;
    .local v6, "attributionTag":Ljava/lang/String;
    .local v7, "noteMessage":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {v2 .. v7}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    .line 614
    return v8

    .line 626
    :cond_0
    goto :goto_1

    .line 616
    :catch_0
    move-exception v0

    move-object p0, v0

    .line 617
    .local p0, "e":Ljava/lang/SecurityException;
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "SecurityException: noteOp for pkg "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " opcode "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 617
    const-string p2, "ContextHubServiceUtil"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    return v8

    .line 610
    .end local v2    # "appOpsManager":Landroid/app/AppOpsManager;
    .end local v4    # "uid":I
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "attributionTag":Ljava/lang/String;
    .end local v7    # "noteMessage":Ljava/lang/String;
    .local p0, "appOpsManager":Landroid/app/AppOpsManager;
    .restart local p1    # "uid":I
    .restart local p2    # "packageName":Ljava/lang/String;
    .restart local p3    # "attributionTag":Ljava/lang/String;
    .restart local p5    # "noteMessage":Ljava/lang/String;
    :cond_1
    move-object v2, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p5

    .line 628
    .end local v1    # "permission":Ljava/lang/String;
    .end local v3    # "opCode":I
    .end local p0    # "appOpsManager":Landroid/app/AppOpsManager;
    .end local p1    # "uid":I
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "attributionTag":Ljava/lang/String;
    .end local p5    # "noteMessage":Ljava/lang/String;
    .restart local v2    # "appOpsManager":Landroid/app/AppOpsManager;
    .restart local v4    # "uid":I
    .restart local v5    # "packageName":Ljava/lang/String;
    .restart local v6    # "attributionTag":Ljava/lang/String;
    .restart local v7    # "noteMessage":Ljava/lang/String;
    :goto_1
    move-object p0, v2

    move p1, v4

    move-object p2, v5

    move-object p3, v6

    move-object p5, v7

    goto :goto_0

    .line 630
    .end local v2    # "appOpsManager":Landroid/app/AppOpsManager;
    .end local v4    # "uid":I
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "attributionTag":Ljava/lang/String;
    .end local v7    # "noteMessage":Ljava/lang/String;
    .restart local p0    # "appOpsManager":Landroid/app/AppOpsManager;
    .restart local p1    # "uid":I
    .restart local p2    # "packageName":Ljava/lang/String;
    .restart local p3    # "attributionTag":Ljava/lang/String;
    .restart local p5    # "noteMessage":Ljava/lang/String;
    :cond_2
    move-object v2, p0

    .end local p0    # "appOpsManager":Landroid/app/AppOpsManager;
    .restart local v2    # "appOpsManager":Landroid/app/AppOpsManager;
    const/4 p0, 0x1

    return p0
.end method

.method static toAppHubEndpointReason(B)I
    .locals 3
    .param p0, "reason"    # B

    .line 517
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    .line 535
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "toAppHubEndpointReason: invalid reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ContextHubServiceUtil"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    return v0

    .line 533
    :pswitch_0
    const/16 v0, 0x9

    return v0

    .line 531
    :pswitch_1
    const/4 v0, 0x6

    return v0

    .line 527
    :pswitch_2
    const/4 v0, 0x5

    return v0

    .line 525
    :pswitch_3
    const/4 v0, 0x4

    return v0

    .line 523
    :pswitch_4
    const/4 v0, 0x3

    return v0

    .line 521
    :pswitch_5
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static toContextHubEvent(I)I
    .locals 2
    .param p0, "hidlEventType"    # I

    .line 392
    packed-switch p0, :pswitch_data_0

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "toContextHubEvent: Unknown event type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContextHubServiceUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const/4 v0, 0x0

    return v0

    .line 394
    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static toContextHubEventFromAidl(I)I
    .locals 2
    .param p0, "aidlEventType"    # I

    .line 409
    packed-switch p0, :pswitch_data_0

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "toContextHubEventFromAidl: Unknown event type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContextHubServiceUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    const/4 v0, 0x0

    return v0

    .line 411
    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static toHalReason(I)B
    .locals 3
    .param p0, "reason"    # I

    .line 548
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    .line 562
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "toHalReason: invalid reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ContextHubServiceUtil"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    return v0

    .line 560
    :pswitch_1
    const/16 v0, 0x9

    return v0

    .line 558
    :pswitch_2
    const/4 v0, 0x6

    return v0

    .line 556
    :pswitch_3
    const/4 v0, 0x5

    return v0

    .line 554
    :pswitch_4
    const/4 v0, 0x4

    return v0

    .line 552
    :pswitch_5
    const/4 v0, 0x3

    return v0

    .line 550
    :pswitch_6
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static toHubAppInfo_1_2(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/contexthub/V1_0/HubAppInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/contexthub/V1_2/HubAppInfo;",
            ">;"
        }
    .end annotation

    .line 371
    .local p0, "oldInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/contexthub/V1_0/HubAppInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 372
    .local v0, "newAppInfo":Ljava/util/ArrayList;
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/contexthub/V1_0/HubAppInfo;

    .line 373
    .local v2, "oldInfo":Landroid/hardware/contexthub/V1_0/HubAppInfo;
    new-instance v3, Landroid/hardware/contexthub/V1_2/HubAppInfo;

    invoke-direct {v3}, Landroid/hardware/contexthub/V1_2/HubAppInfo;-><init>()V

    .line 374
    .local v3, "newInfo":Landroid/hardware/contexthub/V1_2/HubAppInfo;
    iget-object v4, v3, Landroid/hardware/contexthub/V1_2/HubAppInfo;->info_1_0:Landroid/hardware/contexthub/V1_0/HubAppInfo;

    iget-wide v5, v2, Landroid/hardware/contexthub/V1_0/HubAppInfo;->appId:J

    iput-wide v5, v4, Landroid/hardware/contexthub/V1_0/HubAppInfo;->appId:J

    .line 375
    iget-object v4, v3, Landroid/hardware/contexthub/V1_2/HubAppInfo;->info_1_0:Landroid/hardware/contexthub/V1_0/HubAppInfo;

    iget v5, v2, Landroid/hardware/contexthub/V1_0/HubAppInfo;->version:I

    iput v5, v4, Landroid/hardware/contexthub/V1_0/HubAppInfo;->version:I

    .line 376
    iget-object v4, v3, Landroid/hardware/contexthub/V1_2/HubAppInfo;->info_1_0:Landroid/hardware/contexthub/V1_0/HubAppInfo;

    iget-object v5, v2, Landroid/hardware/contexthub/V1_0/HubAppInfo;->memUsage:Ljava/util/ArrayList;

    iput-object v5, v4, Landroid/hardware/contexthub/V1_0/HubAppInfo;->memUsage:Ljava/util/ArrayList;

    .line 377
    iget-object v4, v3, Landroid/hardware/contexthub/V1_2/HubAppInfo;->info_1_0:Landroid/hardware/contexthub/V1_0/HubAppInfo;

    iget-boolean v5, v2, Landroid/hardware/contexthub/V1_0/HubAppInfo;->enabled:Z

    iput-boolean v5, v4, Landroid/hardware/contexthub/V1_0/HubAppInfo;->enabled:Z

    .line 378
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Landroid/hardware/contexthub/V1_2/HubAppInfo;->permissions:Ljava/util/ArrayList;

    .line 379
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    .end local v2    # "oldInfo":Landroid/hardware/contexthub/V1_0/HubAppInfo;
    .end local v3    # "newInfo":Landroid/hardware/contexthub/V1_2/HubAppInfo;
    goto :goto_0

    .line 381
    :cond_0
    return-object v0
.end method

.method static toTransactionResult(I)I
    .locals 1
    .param p0, "halResult"    # I

    .line 346
    packed-switch p0, :pswitch_data_0

    .line 358
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 354
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 352
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 350
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 348
    :pswitch_4
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
