.class public Lcom/android/server/hdmi/SetAudioVolumeLevelMessage;
.super Lcom/android/server/hdmi/HdmiCecMessage;
.source "SetAudioVolumeLevelMessage.java"


# instance fields
.field private final mAudioVolumeLevel:I


# direct methods
.method private constructor <init>(II[BI)V
    .locals 6
    .param p1, "source"    # I
    .param p2, "destination"    # I
    .param p3, "params"    # [B
    .param p4, "audioVolumeLevel"    # I

    .line 31
    const/16 v3, 0x73

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    .end local p1    # "source":I
    .end local p2    # "destination":I
    .end local p3    # "params":[B
    .local v1, "source":I
    .local v2, "destination":I
    .local v4, "params":[B
    invoke-direct/range {v0 .. v5}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(III[BI)V

    .line 32
    iput p4, v0, Lcom/android/server/hdmi/SetAudioVolumeLevelMessage;->mAudioVolumeLevel:I

    .line 33
    return-void
.end method

.method public static build(III)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 9
    .param p0, "source"    # I
    .param p1, "destination"    # I
    .param p2, "audioVolumeLevel"    # I

    .line 45
    and-int/lit16 v0, p2, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    move-object v7, v1

    .line 48
    .local v7, "params":[B
    invoke-static {p0, p1}, Lcom/android/server/hdmi/SetAudioVolumeLevelMessage;->validateAddress(II)I

    move-result v8

    .line 49
    .local v8, "addressValidationResult":I
    if-nez v8, :cond_0

    .line 50
    new-instance v0, Lcom/android/server/hdmi/SetAudioVolumeLevelMessage;

    invoke-direct {v0, p0, p1, v7, p2}, Lcom/android/server/hdmi/SetAudioVolumeLevelMessage;-><init>(II[BI)V

    return-object v0

    .line 52
    :cond_0
    new-instance v3, Lcom/android/server/hdmi/HdmiCecMessage;

    const/16 v6, 0x73

    move v4, p0

    move v5, p1

    .end local p0    # "source":I
    .end local p1    # "destination":I
    .local v4, "source":I
    .local v5, "destination":I
    invoke-direct/range {v3 .. v8}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(III[BI)V

    return-object v3
.end method

.method public static build(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 13
    .param p0, "source"    # I
    .param p1, "destination"    # I
    .param p2, "params"    # [B

    .line 69
    array-length v0, p2

    if-nez v0, :cond_0

    .line 70
    new-instance v1, Lcom/android/server/hdmi/HdmiCecMessage;

    const/16 v4, 0x73

    const/4 v6, 0x4

    move v2, p0

    move v3, p1

    move-object v5, p2

    .end local p0    # "source":I
    .end local p1    # "destination":I
    .end local p2    # "params":[B
    .local v2, "source":I
    .local v3, "destination":I
    .local v5, "params":[B
    invoke-direct/range {v1 .. v6}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(III[BI)V

    return-object v1

    .line 74
    .end local v2    # "source":I
    .end local v3    # "destination":I
    .end local v5    # "params":[B
    .restart local p0    # "source":I
    .restart local p1    # "destination":I
    .restart local p2    # "params":[B
    :cond_0
    move v2, p0

    move v3, p1

    move-object v5, p2

    .end local p0    # "source":I
    .end local p1    # "destination":I
    .end local p2    # "params":[B
    .restart local v2    # "source":I
    .restart local v3    # "destination":I
    .restart local v5    # "params":[B
    const/4 p0, 0x0

    aget-byte p0, v5, p0

    .line 77
    .local p0, "audioVolumeLevel":I
    invoke-static {v2, v3}, Lcom/android/server/hdmi/SetAudioVolumeLevelMessage;->validateAddress(II)I

    move-result v12

    .line 78
    .local v12, "addressValidationResult":I
    if-nez v12, :cond_1

    .line 79
    new-instance p1, Lcom/android/server/hdmi/SetAudioVolumeLevelMessage;

    invoke-direct {p1, v2, v3, v5, p0}, Lcom/android/server/hdmi/SetAudioVolumeLevelMessage;-><init>(II[BI)V

    return-object p1

    .line 81
    :cond_1
    new-instance v7, Lcom/android/server/hdmi/HdmiCecMessage;

    const/16 v10, 0x73

    move v8, v2

    move v9, v3

    move-object v11, v5

    .end local v2    # "source":I
    .end local v3    # "destination":I
    .end local v5    # "params":[B
    .local v8, "source":I
    .local v9, "destination":I
    .local v11, "params":[B
    invoke-direct/range {v7 .. v12}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(III[BI)V

    .end local v8    # "source":I
    .end local v9    # "destination":I
    .end local v11    # "params":[B
    .restart local v2    # "source":I
    .restart local v3    # "destination":I
    .restart local v5    # "params":[B
    return-object v7
.end method

.method public static validateAddress(II)I
    .locals 1
    .param p0, "source"    # I
    .param p1, "destination"    # I

    .line 90
    const/16 v0, 0x7fff

    invoke-static {p0, p1, v0, v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->validateAddress(IIII)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getAudioVolumeLevel()I
    .locals 1

    .line 100
    iget v0, p0, Lcom/android/server/hdmi/SetAudioVolumeLevelMessage;->mAudioVolumeLevel:I

    return v0
.end method
