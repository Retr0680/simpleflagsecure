.class public final Landroid/hardware/tv/mediaquality/NumberRange;
.super Ljava/lang/Object;
.source "NumberRange.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/tv/mediaquality/NumberRange$Tag;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/tv/mediaquality/NumberRange;",
            ">;"
        }
    .end annotation
.end field

.field public static final doubleMinMax:I = 0x2

.field public static final doubleValuesSupported:I = 0x5

.field public static final intMinMax:I = 0x0

.field public static final intValuesSupported:I = 0x3

.field public static final longMinMax:I = 0x1

.field public static final longValuesSupported:I = 0x4


# instance fields
.field private _tag:I

.field private _value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 136
    new-instance v0, Landroid/hardware/tv/mediaquality/NumberRange$1;

    invoke-direct {v0}, Landroid/hardware/tv/mediaquality/NumberRange$1;-><init>()V

    sput-object v0, Landroid/hardware/tv/mediaquality/NumberRange;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    .line 24
    .local v0, "_value":[I
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/tv/mediaquality/NumberRange;->_tag:I

    .line 25
    iput-object v0, p0, Landroid/hardware/tv/mediaquality/NumberRange;->_value:Ljava/lang/Object;

    .line 26
    return-void
.end method

.method private constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Landroid/hardware/tv/mediaquality/NumberRange;->_tag:I

    .line 34
    iput-object p2, p0, Landroid/hardware/tv/mediaquality/NumberRange;->_value:Ljava/lang/Object;

    .line 35
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p0, p1}, Landroid/hardware/tv/mediaquality/NumberRange;->readFromParcel(Landroid/os/Parcel;)V

    .line 30
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/tv/mediaquality/NumberRange-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Landroid/hardware/tv/mediaquality/NumberRange;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private _assertTag(I)V
    .locals 3
    .param p1, "tag"    # I

    .line 219
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/NumberRange;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 222
    return-void

    .line 220
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Landroid/hardware/tv/mediaquality/NumberRange;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/NumberRange;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/tv/mediaquality/NumberRange;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is available."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private _set(ILjava/lang/Object;)V
    .locals 0
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 237
    iput p1, p0, Landroid/hardware/tv/mediaquality/NumberRange;->_tag:I

    .line 238
    iput-object p2, p0, Landroid/hardware/tv/mediaquality/NumberRange;->_value:Ljava/lang/Object;

    .line 239
    return-void
.end method

.method private _tagString(I)Ljava/lang/String;
    .locals 3
    .param p1, "_tag"    # I

    .line 225
    packed-switch p1, :pswitch_data_0

    .line 233
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :pswitch_0
    const-string v0, "doubleValuesSupported"

    return-object v0

    .line 230
    :pswitch_1
    const-string/jumbo v0, "longValuesSupported"

    return-object v0

    .line 229
    :pswitch_2
    const-string/jumbo v0, "intValuesSupported"

    return-object v0

    .line 228
    :pswitch_3
    const-string v0, "doubleMinMax"

    return-object v0

    .line 227
    :pswitch_4
    const-string/jumbo v0, "longMinMax"

    return-object v0

    .line 226
    :pswitch_5
    const-string/jumbo v0, "intMinMax"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static doubleMinMax([D)Landroid/hardware/tv/mediaquality/NumberRange;
    .locals 2
    .param p0, "_value"    # [D

    .line 74
    new-instance v0, Landroid/hardware/tv/mediaquality/NumberRange;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/NumberRange;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static doubleValuesSupported([D)Landroid/hardware/tv/mediaquality/NumberRange;
    .locals 2
    .param p0, "_value"    # [D

    .line 119
    new-instance v0, Landroid/hardware/tv/mediaquality/NumberRange;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/NumberRange;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static intMinMax([I)Landroid/hardware/tv/mediaquality/NumberRange;
    .locals 2
    .param p0, "_value"    # [I

    .line 44
    new-instance v0, Landroid/hardware/tv/mediaquality/NumberRange;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/NumberRange;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static intValuesSupported([I)Landroid/hardware/tv/mediaquality/NumberRange;
    .locals 2
    .param p0, "_value"    # [I

    .line 89
    new-instance v0, Landroid/hardware/tv/mediaquality/NumberRange;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/NumberRange;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static longMinMax([J)Landroid/hardware/tv/mediaquality/NumberRange;
    .locals 2
    .param p0, "_value"    # [J

    .line 59
    new-instance v0, Landroid/hardware/tv/mediaquality/NumberRange;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/NumberRange;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static longValuesSupported([J)Landroid/hardware/tv/mediaquality/NumberRange;
    .locals 2
    .param p0, "_value"    # [J

    .line 104
    new-instance v0, Landroid/hardware/tv/mediaquality/NumberRange;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/NumberRange;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 212
    const/4 v0, 0x0

    .line 213
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/NumberRange;->getTag()I

    .line 215
    return v0
.end method

.method public getDoubleMinMax()[D
    .locals 1

    .line 78
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/NumberRange;->_assertTag(I)V

    .line 79
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/NumberRange;->_value:Ljava/lang/Object;

    check-cast v0, [D

    return-object v0
.end method

.method public getDoubleValuesSupported()[D
    .locals 1

    .line 123
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/NumberRange;->_assertTag(I)V

    .line 124
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/NumberRange;->_value:Ljava/lang/Object;

    check-cast v0, [D

    return-object v0
.end method

.method public getIntMinMax()[I
    .locals 1

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/NumberRange;->_assertTag(I)V

    .line 49
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/NumberRange;->_value:Ljava/lang/Object;

    check-cast v0, [I

    return-object v0
.end method

.method public getIntValuesSupported()[I
    .locals 1

    .line 93
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/NumberRange;->_assertTag(I)V

    .line 94
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/NumberRange;->_value:Ljava/lang/Object;

    check-cast v0, [I

    return-object v0
.end method

.method public getLongMinMax()[J
    .locals 1

    .line 63
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/NumberRange;->_assertTag(I)V

    .line 64
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/NumberRange;->_value:Ljava/lang/Object;

    check-cast v0, [J

    return-object v0
.end method

.method public getLongValuesSupported()[J
    .locals 1

    .line 108
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/NumberRange;->_assertTag(I)V

    .line 109
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/NumberRange;->_value:Ljava/lang/Object;

    check-cast v0, [J

    return-object v0
.end method

.method public final getStability()I
    .locals 1

    .line 133
    const/4 v0, 0x1

    return v0
.end method

.method public getTag()I
    .locals 1

    .line 38
    iget v0, p0, Landroid/hardware/tv/mediaquality/NumberRange;->_tag:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 175
    .local v0, "_aidl_tag":I
    const/4 v1, 0x2

    packed-switch v0, :pswitch_data_0

    .line 207
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "union: unknown tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 203
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createDoubleArray()[D

    move-result-object v1

    .line 204
    .local v1, "_aidl_value":[D
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/mediaquality/NumberRange;->_set(ILjava/lang/Object;)V

    .line 205
    return-void

    .line 198
    .end local v1    # "_aidl_value":[D
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v1

    .line 199
    .local v1, "_aidl_value":[J
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/mediaquality/NumberRange;->_set(ILjava/lang/Object;)V

    .line 200
    return-void

    .line 193
    .end local v1    # "_aidl_value":[J
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 194
    .local v1, "_aidl_value":[I
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/mediaquality/NumberRange;->_set(ILjava/lang/Object;)V

    .line 195
    return-void

    .line 188
    .end local v1    # "_aidl_value":[I
    :pswitch_3
    const-class v2, [D

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Landroid/os/Parcel;->createFixedArray(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    .line 189
    .local v1, "_aidl_value":[D
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/mediaquality/NumberRange;->_set(ILjava/lang/Object;)V

    .line 190
    return-void

    .line 183
    .end local v1    # "_aidl_value":[D
    :pswitch_4
    const-class v2, [J

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Landroid/os/Parcel;->createFixedArray(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    .line 184
    .local v1, "_aidl_value":[J
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/mediaquality/NumberRange;->_set(ILjava/lang/Object;)V

    .line 185
    return-void

    .line 178
    .end local v1    # "_aidl_value":[J
    :pswitch_5
    const-class v2, [I

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Landroid/os/Parcel;->createFixedArray(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 179
    .local v1, "_aidl_value":[I
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/mediaquality/NumberRange;->_set(ILjava/lang/Object;)V

    .line 180
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDoubleMinMax([D)V
    .locals 1
    .param p1, "_value"    # [D

    .line 83
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/mediaquality/NumberRange;->_set(ILjava/lang/Object;)V

    .line 84
    return-void
.end method

.method public setDoubleValuesSupported([D)V
    .locals 1
    .param p1, "_value"    # [D

    .line 128
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/mediaquality/NumberRange;->_set(ILjava/lang/Object;)V

    .line 129
    return-void
.end method

.method public setIntMinMax([I)V
    .locals 1
    .param p1, "_value"    # [I

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/mediaquality/NumberRange;->_set(ILjava/lang/Object;)V

    .line 54
    return-void
.end method

.method public setIntValuesSupported([I)V
    .locals 1
    .param p1, "_value"    # [I

    .line 98
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/mediaquality/NumberRange;->_set(ILjava/lang/Object;)V

    .line 99
    return-void
.end method

.method public setLongMinMax([J)V
    .locals 1
    .param p1, "_value"    # [J

    .line 68
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/mediaquality/NumberRange;->_set(ILjava/lang/Object;)V

    .line 69
    return-void
.end method

.method public setLongValuesSupported([J)V
    .locals 1
    .param p1, "_value"    # [J

    .line 113
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/mediaquality/NumberRange;->_set(ILjava/lang/Object;)V

    .line 114
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 149
    iget v0, p0, Landroid/hardware/tv/mediaquality/NumberRange;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget v0, p0, Landroid/hardware/tv/mediaquality/NumberRange;->_tag:I

    const/4 v1, 0x2

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 167
    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/NumberRange;->getDoubleValuesSupported()[D

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeDoubleArray([D)V

    goto :goto_0

    .line 164
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/NumberRange;->getLongValuesSupported()[J

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 165
    goto :goto_0

    .line 161
    :pswitch_2
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/NumberRange;->getIntValuesSupported()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 162
    goto :goto_0

    .line 158
    :pswitch_3
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/NumberRange;->getDoubleMinMax()[D

    move-result-object v0

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Landroid/os/Parcel;->writeFixedArray(Ljava/lang/Object;I[I)V

    .line 159
    goto :goto_0

    .line 155
    :pswitch_4
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/NumberRange;->getLongMinMax()[J

    move-result-object v0

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Landroid/os/Parcel;->writeFixedArray(Ljava/lang/Object;I[I)V

    .line 156
    goto :goto_0

    .line 152
    :pswitch_5
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/NumberRange;->getIntMinMax()[I

    move-result-object v0

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Landroid/os/Parcel;->writeFixedArray(Ljava/lang/Object;I[I)V

    .line 153
    nop

    .line 170
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
