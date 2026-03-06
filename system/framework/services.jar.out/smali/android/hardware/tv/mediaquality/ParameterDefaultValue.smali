.class public final Landroid/hardware/tv/mediaquality/ParameterDefaultValue;
.super Ljava/lang/Object;
.source "ParameterDefaultValue.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/tv/mediaquality/ParameterDefaultValue$Tag;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/tv/mediaquality/ParameterDefaultValue;",
            ">;"
        }
    .end annotation
.end field

.field public static final doubleDefault:I = 0x2

.field public static final intDefault:I = 0x0

.field public static final longDefault:I = 0x1

.field public static final stringDefault:I = 0x3


# instance fields
.field private _tag:I

.field private _value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 104
    new-instance v0, Landroid/hardware/tv/mediaquality/ParameterDefaultValue$1;

    invoke-direct {v0}, Landroid/hardware/tv/mediaquality/ParameterDefaultValue$1;-><init>()V

    sput-object v0, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    .line 22
    .local v0, "_value":I
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->_tag:I

    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->_value:Ljava/lang/Object;

    .line 24
    return-void
.end method

.method private constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->_tag:I

    .line 32
    iput-object p2, p0, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->_value:Ljava/lang/Object;

    .line 33
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p0, p1}, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->readFromParcel(Landroid/os/Parcel;)V

    .line 28
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/tv/mediaquality/ParameterDefaultValue-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private _assertTag(I)V
    .locals 3
    .param p1, "tag"    # I

    .line 171
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 174
    return-void

    .line 172
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->_tagString(I)Ljava/lang/String;

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

    .line 187
    iput p1, p0, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->_tag:I

    .line 188
    iput-object p2, p0, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->_value:Ljava/lang/Object;

    .line 189
    return-void
.end method

.method private _tagString(I)Ljava/lang/String;
    .locals 3
    .param p1, "_tag"    # I

    .line 177
    packed-switch p1, :pswitch_data_0

    .line 183
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

    .line 181
    :pswitch_0
    const-string/jumbo v0, "stringDefault"

    return-object v0

    .line 180
    :pswitch_1
    const-string v0, "doubleDefault"

    return-object v0

    .line 179
    :pswitch_2
    const-string/jumbo v0, "longDefault"

    return-object v0

    .line 178
    :pswitch_3
    const-string/jumbo v0, "intDefault"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static doubleDefault(D)Landroid/hardware/tv/mediaquality/ParameterDefaultValue;
    .locals 3
    .param p0, "_value"    # D

    .line 72
    new-instance v0, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static intDefault(I)Landroid/hardware/tv/mediaquality/ParameterDefaultValue;
    .locals 3
    .param p0, "_value"    # I

    .line 42
    new-instance v0, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static longDefault(J)Landroid/hardware/tv/mediaquality/ParameterDefaultValue;
    .locals 3
    .param p0, "_value"    # J

    .line 57
    new-instance v0, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static stringDefault(Ljava/lang/String;)Landroid/hardware/tv/mediaquality/ParameterDefaultValue;
    .locals 2
    .param p0, "_value"    # Ljava/lang/String;

    .line 87
    new-instance v0, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->getTag()I

    .line 167
    return v0
.end method

.method public getDoubleDefault()D
    .locals 2

    .line 76
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->_assertTag(I)V

    .line 77
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getIntDefault()I
    .locals 1

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->_assertTag(I)V

    .line 47
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getLongDefault()J
    .locals 2

    .line 61
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->_assertTag(I)V

    .line 62
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getStability()I
    .locals 1

    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method public getStringDefault()Ljava/lang/String;
    .locals 1

    .line 91
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->_assertTag(I)V

    .line 92
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTag()I
    .locals 1

    .line 36
    iget v0, p0, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->_tag:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 137
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_0

    .line 159
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

    .line 155
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "_aidl_value":Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->_set(ILjava/lang/Object;)V

    .line 157
    return-void

    .line 150
    .end local v1    # "_aidl_value":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    .line 151
    .local v1, "_aidl_value":D
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->_set(ILjava/lang/Object;)V

    .line 152
    return-void

    .line 145
    .end local v1    # "_aidl_value":D
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 146
    .local v1, "_aidl_value":J
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->_set(ILjava/lang/Object;)V

    .line 147
    return-void

    .line 140
    .end local v1    # "_aidl_value":J
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 141
    .local v1, "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->_set(ILjava/lang/Object;)V

    .line 142
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDoubleDefault(D)V
    .locals 2
    .param p1, "_value"    # D

    .line 81
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->_set(ILjava/lang/Object;)V

    .line 82
    return-void
.end method

.method public setIntDefault(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 51
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->_set(ILjava/lang/Object;)V

    .line 52
    return-void
.end method

.method public setLongDefault(J)V
    .locals 2
    .param p1, "_value"    # J

    .line 66
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->_set(ILjava/lang/Object;)V

    .line 67
    return-void
.end method

.method public setStringDefault(Ljava/lang/String;)V
    .locals 1
    .param p1, "_value"    # Ljava/lang/String;

    .line 96
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->_set(ILjava/lang/Object;)V

    .line 97
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 117
    iget v0, p0, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget v0, p0, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->_tag:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 129
    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->getStringDefault()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->getDoubleDefault()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 127
    goto :goto_0

    .line 123
    :pswitch_2
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->getLongDefault()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 124
    goto :goto_0

    .line 120
    :pswitch_3
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->getIntDefault()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    nop

    .line 132
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
