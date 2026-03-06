.class public final Lcom/android/server/biometrics/sensors/face/aidl/AidlConversionUtils;
.super Ljava/lang/Object;
.source "AidlConversionUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AidlConversionUtils"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public static convertAidlToFrameworkFeature(B)I
    .locals 2
    .param p0, "feature"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 213
    sparse-switch p0, :sswitch_data_0

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported feature : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AidlConversionUtils"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 223
    :sswitch_0
    const/16 v0, 0x3e8

    return v0

    .line 217
    :sswitch_1
    const/4 v0, 0x2

    return v0

    .line 215
    :sswitch_2
    const/4 v0, 0x1

    return v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x64 -> :sswitch_0
    .end sparse-switch
.end method

.method public static convertFrameworkToAidlFeature(I)B
    .locals 2
    .param p0, "feature"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 190
    sparse-switch p0, :sswitch_data_0

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported feature : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AidlConversionUtils"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 199
    :sswitch_0
    const/16 v0, 0xe

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-static {v0}, Lcom/nothing/NtFeaturesUtils;->isSupport([I)Z

    move-result v0

    .line 200
    .local v0, "isSupportArc":Z
    if-eqz v0, :cond_0

    .line 201
    const/16 v1, 0x64

    return v1

    .line 203
    :cond_0
    const/4 v1, 0x2

    return v1

    .line 194
    .end local v0    # "isSupportArc":Z
    :sswitch_1
    const/4 v0, 0x1

    return v0

    .line 192
    :sswitch_2
    const/4 v0, 0x0

    return v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0x3e8 -> :sswitch_0
    .end sparse-switch
.end method

.method public static toFrameworkAcquiredInfo(B)I
    .locals 1
    .param p0, "aidlAcquiredInfo"    # B

    .line 79
    packed-switch p0, :pswitch_data_0

    .line 134
    const/16 v0, 0x17

    return v0

    .line 131
    :pswitch_0
    const/16 v0, 0x1a

    return v0

    .line 129
    :pswitch_1
    const/16 v0, 0x19

    return v0

    .line 127
    :pswitch_2
    const/16 v0, 0x18

    return v0

    .line 125
    :pswitch_3
    const/16 v0, 0x16

    return v0

    .line 123
    :pswitch_4
    const/16 v0, 0x15

    return v0

    .line 121
    :pswitch_5
    const/16 v0, 0x14

    return v0

    .line 119
    :pswitch_6
    const/16 v0, 0x13

    return v0

    .line 117
    :pswitch_7
    const/16 v0, 0x12

    return v0

    .line 115
    :pswitch_8
    const/16 v0, 0x11

    return v0

    .line 113
    :pswitch_9
    const/16 v0, 0x10

    return v0

    .line 111
    :pswitch_a
    const/16 v0, 0xf

    return v0

    .line 109
    :pswitch_b
    const/16 v0, 0xe

    return v0

    .line 107
    :pswitch_c
    const/16 v0, 0xd

    return v0

    .line 105
    :pswitch_d
    const/16 v0, 0xc

    return v0

    .line 103
    :pswitch_e
    const/16 v0, 0xb

    return v0

    .line 101
    :pswitch_f
    const/16 v0, 0xa

    return v0

    .line 99
    :pswitch_10
    const/16 v0, 0x9

    return v0

    .line 97
    :pswitch_11
    const/16 v0, 0x8

    return v0

    .line 95
    :pswitch_12
    const/4 v0, 0x7

    return v0

    .line 93
    :pswitch_13
    const/4 v0, 0x6

    return v0

    .line 91
    :pswitch_14
    const/4 v0, 0x5

    return v0

    .line 89
    :pswitch_15
    const/4 v0, 0x4

    return v0

    .line 87
    :pswitch_16
    const/4 v0, 0x3

    return v0

    .line 85
    :pswitch_17
    const/4 v0, 0x2

    return v0

    .line 83
    :pswitch_18
    const/4 v0, 0x1

    return v0

    .line 81
    :pswitch_19
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_19
        :pswitch_18
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

.method public static toFrameworkAuthenticationFrame(Landroid/hardware/biometrics/face/AuthenticationFrame;)Landroid/hardware/face/FaceAuthenticationFrame;
    .locals 2
    .param p0, "frame"    # Landroid/hardware/biometrics/face/AuthenticationFrame;

    .line 162
    new-instance v0, Landroid/hardware/face/FaceAuthenticationFrame;

    iget-object v1, p0, Landroid/hardware/biometrics/face/AuthenticationFrame;->data:Landroid/hardware/biometrics/face/BaseFrame;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlConversionUtils;->toFrameworkBaseFrame(Landroid/hardware/biometrics/face/BaseFrame;)Landroid/hardware/face/FaceDataFrame;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/hardware/face/FaceAuthenticationFrame;-><init>(Landroid/hardware/face/FaceDataFrame;)V

    return-object v0
.end method

.method public static toFrameworkBaseFrame(Landroid/hardware/biometrics/face/BaseFrame;)Landroid/hardware/face/FaceDataFrame;
    .locals 7
    .param p0, "frame"    # Landroid/hardware/biometrics/face/BaseFrame;

    .line 175
    new-instance v0, Landroid/hardware/face/FaceDataFrame;

    iget-byte v1, p0, Landroid/hardware/biometrics/face/BaseFrame;->acquiredInfo:B

    .line 176
    invoke-static {v1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlConversionUtils;->toFrameworkAcquiredInfo(B)I

    move-result v1

    iget v2, p0, Landroid/hardware/biometrics/face/BaseFrame;->vendorCode:I

    iget v3, p0, Landroid/hardware/biometrics/face/BaseFrame;->pan:F

    iget v4, p0, Landroid/hardware/biometrics/face/BaseFrame;->tilt:F

    iget v5, p0, Landroid/hardware/biometrics/face/BaseFrame;->distance:F

    iget-boolean v6, p0, Landroid/hardware/biometrics/face/BaseFrame;->isCancellable:Z

    invoke-direct/range {v0 .. v6}, Landroid/hardware/face/FaceDataFrame;-><init>(IIFFFZ)V

    .line 175
    return-object v0
.end method

.method public static toFrameworkCell(Landroid/hardware/biometrics/face/Cell;)Landroid/hardware/face/FaceEnrollCell;
    .locals 4
    .param p0, "cell"    # Landroid/hardware/biometrics/face/Cell;

    .line 186
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/hardware/face/FaceEnrollCell;

    iget v1, p0, Landroid/hardware/biometrics/face/Cell;->x:I

    iget v2, p0, Landroid/hardware/biometrics/face/Cell;->y:I

    iget v3, p0, Landroid/hardware/biometrics/face/Cell;->z:I

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/face/FaceEnrollCell;-><init>(III)V

    :goto_0
    return-object v0
.end method

.method public static toFrameworkEnrollmentFrame(Landroid/hardware/biometrics/face/EnrollmentFrame;)Landroid/hardware/face/FaceEnrollFrame;
    .locals 4
    .param p0, "frame"    # Landroid/hardware/biometrics/face/EnrollmentFrame;

    .line 167
    new-instance v0, Landroid/hardware/face/FaceEnrollFrame;

    iget-object v1, p0, Landroid/hardware/biometrics/face/EnrollmentFrame;->cell:Landroid/hardware/biometrics/face/Cell;

    .line 168
    invoke-static {v1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlConversionUtils;->toFrameworkCell(Landroid/hardware/biometrics/face/Cell;)Landroid/hardware/face/FaceEnrollCell;

    move-result-object v1

    iget-byte v2, p0, Landroid/hardware/biometrics/face/EnrollmentFrame;->stage:B

    .line 169
    invoke-static {v2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlConversionUtils;->toFrameworkEnrollmentStage(I)I

    move-result v2

    iget-object v3, p0, Landroid/hardware/biometrics/face/EnrollmentFrame;->data:Landroid/hardware/biometrics/face/BaseFrame;

    .line 170
    invoke-static {v3}, Lcom/android/server/biometrics/sensors/face/aidl/AidlConversionUtils;->toFrameworkBaseFrame(Landroid/hardware/biometrics/face/BaseFrame;)Landroid/hardware/face/FaceDataFrame;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/face/FaceEnrollFrame;-><init>(Landroid/hardware/face/FaceEnrollCell;ILandroid/hardware/face/FaceDataFrame;)V

    .line 167
    return-object v0
.end method

.method public static toFrameworkEnrollmentStage(I)I
    .locals 1
    .param p0, "aidlEnrollmentStage"    # I

    .line 140
    packed-switch p0, :pswitch_data_0

    .line 155
    const/4 v0, 0x0

    return v0

    .line 152
    :pswitch_0
    const/4 v0, 0x6

    return v0

    .line 150
    :pswitch_1
    const/4 v0, 0x5

    return v0

    .line 148
    :pswitch_2
    const/4 v0, 0x4

    return v0

    .line 146
    :pswitch_3
    const/4 v0, 0x3

    return v0

    .line 144
    :pswitch_4
    const/4 v0, 0x2

    return v0

    .line 142
    :pswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static toFrameworkError(B)I
    .locals 1
    .param p0, "aidlError"    # B

    .line 54
    packed-switch p0, :pswitch_data_0

    .line 73
    const/16 v0, 0x11

    return v0

    .line 70
    :pswitch_0
    const/16 v0, 0x10

    return v0

    .line 68
    :pswitch_1
    const/16 v0, 0x8

    return v0

    .line 66
    :pswitch_2
    const/4 v0, 0x6

    return v0

    .line 64
    :pswitch_3
    const/4 v0, 0x5

    return v0

    .line 62
    :pswitch_4
    const/4 v0, 0x4

    return v0

    .line 60
    :pswitch_5
    const/4 v0, 0x3

    return v0

    .line 58
    :pswitch_6
    const/4 v0, 0x2

    return v0

    .line 56
    :pswitch_7
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
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
