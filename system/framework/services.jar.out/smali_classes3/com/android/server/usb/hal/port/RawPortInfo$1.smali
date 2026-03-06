.class Lcom/android/server/usb/hal/port/RawPortInfo$1;
.super Ljava/lang/Object;
.source "RawPortInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/hal/port/RawPortInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/server/usb/hal/port/RawPortInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/server/usb/hal/port/RawPortInfo;
    .locals 23
    .param p1, "in"    # Landroid/os/Parcel;

    .line 170
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, "id":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 172
    .local v2, "supportedModes":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 173
    .local v3, "supportedContaminantProtectionModes":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 174
    .local v4, "currentMode":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_0

    move v0, v6

    goto :goto_0

    :cond_0
    move v0, v5

    .line 175
    .local v0, "canChangeMode":Z
    :goto_0
    move v7, v6

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 176
    .local v6, "currentPowerRole":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v8

    if-eqz v8, :cond_1

    move v8, v7

    goto :goto_1

    :cond_1
    move v8, v5

    .line 177
    .local v8, "canChangePowerRole":Z
    :goto_1
    move v9, v7

    move v7, v8

    .end local v8    # "canChangePowerRole":Z
    .local v7, "canChangePowerRole":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 178
    .local v8, "currentDataRole":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_2

    :cond_2
    move v9, v5

    .line 179
    .local v9, "canChangeDataRole":Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v10

    .line 180
    .local v10, "supportsEnableContaminantPresenceProtection":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 181
    .local v11, "contaminantProtectionStatus":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v12

    .line 182
    .local v12, "supportsEnableContaminantPresenceDetection":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 183
    .local v13, "contaminantDetectionStatus":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 184
    .local v14, "usbDataStatus":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v15

    .line 185
    .local v15, "powerTransferLimited":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 186
    .local v16, "powerBrickConnectionStatus":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    .line 187
    .local v17, "supportsComplianceWarnings":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v18

    .line 188
    .local v18, "complianceWarnings":[I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 189
    .local v19, "plugState":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 190
    .local v20, "supportedAltModes":I
    and-int/lit8 v5, v20, 0x1

    if-eqz v5, :cond_3

    .line 191
    sget-object v5, Landroid/hardware/usb/DisplayPortAltModeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move/from16 v21, v0

    move-object/from16 v0, p1

    .end local v0    # "canChangeMode":Z
    .local v21, "canChangeMode":Z
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/usb/DisplayPortAltModeInfo;

    .local v5, "displayPortAltModeInfo":Landroid/hardware/usb/DisplayPortAltModeInfo;
    goto :goto_3

    .line 193
    .end local v5    # "displayPortAltModeInfo":Landroid/hardware/usb/DisplayPortAltModeInfo;
    .end local v21    # "canChangeMode":Z
    .restart local v0    # "canChangeMode":Z
    :cond_3
    move/from16 v21, v0

    move-object/from16 v0, p1

    .end local v0    # "canChangeMode":Z
    .restart local v21    # "canChangeMode":Z
    const/4 v5, 0x0

    .line 195
    .restart local v5    # "displayPortAltModeInfo":Landroid/hardware/usb/DisplayPortAltModeInfo;
    :goto_3
    new-instance v0, Lcom/android/server/usb/hal/port/RawPortInfo;

    move/from16 v22, v21

    move-object/from16 v21, v5

    move/from16 v5, v22

    .local v5, "canChangeMode":Z
    .local v21, "displayPortAltModeInfo":Landroid/hardware/usb/DisplayPortAltModeInfo;
    invoke-direct/range {v0 .. v21}, Lcom/android/server/usb/hal/port/RawPortInfo;-><init>(Ljava/lang/String;IIIZIZIZZIZIIZIZ[IIILandroid/hardware/usb/DisplayPortAltModeInfo;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 165
    invoke-virtual {p0, p1}, Lcom/android/server/usb/hal/port/RawPortInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/server/usb/hal/port/RawPortInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/android/server/usb/hal/port/RawPortInfo;
    .locals 1
    .param p1, "size"    # I

    .line 210
    new-array v0, p1, [Lcom/android/server/usb/hal/port/RawPortInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 165
    invoke-virtual {p0, p1}, Lcom/android/server/usb/hal/port/RawPortInfo$1;->newArray(I)[Lcom/android/server/usb/hal/port/RawPortInfo;

    move-result-object p1

    return-object p1
.end method
