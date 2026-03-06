.class public Lcom/android/server/hdmi/HdmiCecAtomWriter;
.super Ljava/lang/Object;
.source "HdmiCecAtomWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;,
        Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;
    }
.end annotation


# static fields
.field private static final ERROR_CODE_UNKNOWN:I = -0x1

.field protected static final FEATURE_ABORT_OPCODE_UNKNOWN:I = 0x100

.field protected static final PHYSICAL_ADDRESS_INVALID:I = 0xffff


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createFeatureAbortSpecialArgs(Lcom/android/server/hdmi/HdmiCecMessage;)Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;
    .locals 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 139
    new-instance v0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;-><init>(Lcom/android/server/hdmi/HdmiCecAtomWriter;Lcom/android/server/hdmi/HdmiCecAtomWriter-IA;)V

    .line 141
    .local v0, "specialArgs":Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_0

    .line 142
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    iput v1, v0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;->mFeatureAbortOpcode:I

    .line 143
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 144
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v1

    aget-byte v1, v1, v2

    add-int/lit8 v1, v1, 0xa

    iput v1, v0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;->mFeatureAbortReason:I

    .line 148
    :cond_0
    return-object v0
.end method

.method private createMessageReportedGenericArgs(Lcom/android/server/hdmi/HdmiCecMessage;III)Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;
    .locals 9
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .param p2, "direction"    # I
    .param p3, "errorCode"    # I
    .param p4, "callingUid"    # I

    .line 82
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 83
    const/4 v0, 0x0

    goto :goto_0

    .line 84
    :cond_0
    add-int/lit8 v0, p3, 0xa

    :goto_0
    move v8, v0

    .line 85
    .local v8, "sendMessageResult":I
    new-instance v1, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v5

    .line 86
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v6

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v7

    move-object v2, p0

    move v4, p2

    move v3, p4

    .end local p2    # "direction":I
    .end local p4    # "callingUid":I
    .local v3, "callingUid":I
    .local v4, "direction":I
    invoke-direct/range {v1 .. v8}, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;-><init>(Lcom/android/server/hdmi/HdmiCecAtomWriter;IIIIII)V

    .line 85
    return-object v1
.end method

.method private createMessageReportedSpecialArgs(Lcom/android/server/hdmi/HdmiCecMessage;)Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;
    .locals 2
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 97
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 108
    new-instance v0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;

    invoke-direct {v0, p0, v1}, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;-><init>(Lcom/android/server/hdmi/HdmiCecAtomWriter;Lcom/android/server/hdmi/HdmiCecAtomWriter-IA;)V

    return-object v0

    .line 103
    :sswitch_0
    nop

    .line 106
    new-instance v0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;

    invoke-direct {v0, p0, v1}, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;-><init>(Lcom/android/server/hdmi/HdmiCecAtomWriter;Lcom/android/server/hdmi/HdmiCecAtomWriter-IA;)V

    return-object v0

    .line 99
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecAtomWriter;->createUserControlPressedSpecialArgs(Lcom/android/server/hdmi/HdmiCecMessage;)Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;

    move-result-object v0

    return-object v0

    .line 101
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecAtomWriter;->createFeatureAbortSpecialArgs(Lcom/android/server/hdmi/HdmiCecMessage;)Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x44 -> :sswitch_1
        0x84 -> :sswitch_0
    .end sparse-switch
.end method

.method private createReportPhysicalAddressSpecialArgs(Lcom/android/server/hdmi/HdmiCecMessage;)Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;
    .locals 4
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 158
    new-instance v0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;-><init>(Lcom/android/server/hdmi/HdmiCecAtomWriter;Lcom/android/server/hdmi/HdmiCecAtomWriter-IA;)V

    .line 160
    .local v0, "specialArgs":Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 161
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v1

    const/4 v3, 0x0

    aget-byte v1, v1, v3

    shl-int/lit8 v1, v1, 0x8

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v3

    aget-byte v2, v3, v2

    or-int/2addr v1, v2

    .line 162
    .local v1, "physicalAddress":I
    iput v1, v0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;->mPhysicalAddress:I

    .line 165
    .end local v1    # "physicalAddress":I
    :cond_0
    return-object v0
.end method

.method private createUserControlPressedSpecialArgs(Lcom/android/server/hdmi/HdmiCecMessage;)Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;
    .locals 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 119
    new-instance v0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;-><init>(Lcom/android/server/hdmi/HdmiCecAtomWriter;Lcom/android/server/hdmi/HdmiCecAtomWriter-IA;)V

    .line 121
    .local v0, "specialArgs":Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_1

    .line 122
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    .line 123
    .local v1, "keycode":I
    const/16 v2, 0x1e

    if-lt v1, v2, :cond_0

    const/16 v2, 0x29

    if-gt v1, v2, :cond_0

    .line 124
    const/4 v2, 0x2

    iput v2, v0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;->mUserControlPressedCommand:I

    goto :goto_0

    .line 126
    :cond_0
    add-int/lit16 v2, v1, 0x100

    iput v2, v0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;->mUserControlPressedCommand:I

    .line 130
    .end local v1    # "keycode":I
    :cond_1
    :goto_0
    return-object v0
.end method

.method private earcStateToEnum(I)I
    .locals 1
    .param p1, "earcState"    # I

    .line 289
    packed-switch p1, :pswitch_data_0

    .line 299
    const/4 v0, 0x0

    return v0

    .line 297
    :pswitch_0
    const/4 v0, 0x4

    return v0

    .line 295
    :pswitch_1
    const/4 v0, 0x3

    return v0

    .line 293
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 291
    :pswitch_3
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private messageReportedBase(Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;)V
    .locals 11
    .param p1, "genericArgs"    # Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;
    .param p2, "specialArgs"    # Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;

    .line 176
    iget v1, p1, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;->mUid:I

    iget v2, p1, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;->mDirection:I

    iget v3, p1, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;->mInitiatorLogicalAddress:I

    iget v4, p1, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;->mDestinationLogicalAddress:I

    iget v5, p1, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;->mOpcode:I

    iget v6, p1, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;->mSendMessageResult:I

    iget v7, p2, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;->mUserControlPressedCommand:I

    iget v8, p2, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;->mFeatureAbortOpcode:I

    iget v9, p2, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;->mFeatureAbortReason:I

    iget v10, p2, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;->mPhysicalAddress:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/hdmi/HdmiCecAtomWriter;->writeHdmiCecMessageReportedAtom(IIIIIIIIII)V

    .line 187
    return-void
.end method


# virtual methods
.method public activeSourceChanged(III)V
    .locals 1
    .param p1, "logicalAddress"    # I
    .param p2, "physicalAddress"    # I
    .param p3, "relationshipToActiveSource"    # I

    .line 220
    const/16 v0, 0x135

    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 226
    return-void
.end method

.method public dsmStatusChanged(ZZI)V
    .locals 1
    .param p1, "isSupported"    # Z
    .param p2, "isEnabled"    # Z
    .param p3, "enumLogReason"    # I

    .line 261
    const/16 v0, 0x2d4

    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZZI)V

    .line 266
    return-void
.end method

.method public earcStatusChanged(ZZIII)V
    .locals 6
    .param p1, "isSupported"    # Z
    .param p2, "isEnabled"    # Z
    .param p3, "oldConnectionState"    # I
    .param p4, "newConnectionState"    # I
    .param p5, "enumLogReason"    # I

    .line 240
    invoke-direct {p0, p3}, Lcom/android/server/hdmi/HdmiCecAtomWriter;->earcStateToEnum(I)I

    move-result v3

    .line 241
    .local v3, "enumOldConnectionState":I
    invoke-direct {p0, p4}, Lcom/android/server/hdmi/HdmiCecAtomWriter;->earcStateToEnum(I)I

    move-result v4

    .line 243
    .local v4, "enumNewConnectionState":I
    const/16 v0, 0x2bd

    move v1, p1

    move v2, p2

    move v5, p5

    .end local p1    # "isSupported":Z
    .end local p2    # "isEnabled":Z
    .end local p5    # "enumLogReason":I
    .local v1, "isSupported":Z
    .local v2, "isEnabled":Z
    .local v5, "enumLogReason":I
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZZIII)V

    .line 251
    return-void
.end method

.method public messageReported(Lcom/android/server/hdmi/HdmiCecMessage;II)V
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .param p2, "direction"    # I
    .param p3, "callingUid"    # I

    .line 69
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/hdmi/HdmiCecAtomWriter;->messageReported(Lcom/android/server/hdmi/HdmiCecMessage;III)V

    .line 70
    return-void
.end method

.method public messageReported(Lcom/android/server/hdmi/HdmiCecMessage;III)V
    .locals 2
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .param p2, "direction"    # I
    .param p3, "callingUid"    # I
    .param p4, "errorCode"    # I

    .line 55
    invoke-direct {p0, p1, p2, p4, p3}, Lcom/android/server/hdmi/HdmiCecAtomWriter;->createMessageReportedGenericArgs(Lcom/android/server/hdmi/HdmiCecMessage;III)Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;

    move-result-object v0

    .line 57
    .local v0, "genericArgs":Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecAtomWriter;->createMessageReportedSpecialArgs(Lcom/android/server/hdmi/HdmiCecMessage;)Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;

    move-result-object v1

    .line 58
    .local v1, "specialArgs":Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;
    invoke-direct {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecAtomWriter;->messageReportedBase(Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;)V

    .line 59
    return-void
.end method

.method public powerStateChangeOnActiveSourceLostChanged(ZILjava/lang/String;II)V
    .locals 6
    .param p1, "isEnabled"    # Z
    .param p2, "enumLogReason"    # I
    .param p3, "manufacturerPnpId"    # Ljava/lang/String;
    .param p4, "manufacturerYear"    # I
    .param p5, "manufacturerWeek"    # I

    .line 279
    const/16 v0, 0x3df

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .end local p1    # "isEnabled":Z
    .end local p2    # "enumLogReason":I
    .end local p3    # "manufacturerPnpId":Ljava/lang/String;
    .end local p4    # "manufacturerYear":I
    .end local p5    # "manufacturerWeek":I
    .local v1, "isEnabled":Z
    .local v2, "enumLogReason":I
    .local v3, "manufacturerPnpId":Ljava/lang/String;
    .local v4, "manufacturerYear":I
    .local v5, "manufacturerWeek":I
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZILjava/lang/String;II)V

    .line 286
    return-void
.end method

.method protected writeHdmiCecMessageReportedAtom(IIIIIIIIII)V
    .locals 11
    .param p1, "uid"    # I
    .param p2, "direction"    # I
    .param p3, "initiatorLogicalAddress"    # I
    .param p4, "destinationLogicalAddress"    # I
    .param p5, "opcode"    # I
    .param p6, "sendMessageResult"    # I
    .param p7, "userControlPressedCommand"    # I
    .param p8, "featureAbortOpcode"    # I
    .param p9, "featureAbortReason"    # I
    .param p10, "physicalAddress"    # I

    .line 197
    const/16 v0, 0x136

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-static/range {v0 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIIIIIIII)V

    .line 209
    return-void
.end method
