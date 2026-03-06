.class public final Landroid/hardware/audio/effect/AutomaticGainControlV1;
.super Ljava/lang/Object;
.source "AutomaticGainControlV1.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/audio/effect/AutomaticGainControlV1$Tag;,
        Landroid/hardware/audio/effect/AutomaticGainControlV1$Id;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/audio/effect/AutomaticGainControlV1;",
            ">;"
        }
    .end annotation
.end field

.field public static final enableLimiter:I = 0x3

.field public static final maxCompressionGainDb:I = 0x2

.field public static final targetPeakLevelDbFs:I = 0x1

.field public static final vendor:I


# instance fields
.field private _tag:I

.field private _value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 104
    new-instance v0, Landroid/hardware/audio/effect/AutomaticGainControlV1$1;

    invoke-direct {v0}, Landroid/hardware/audio/effect/AutomaticGainControlV1$1;-><init>()V

    sput-object v0, Landroid/hardware/audio/effect/AutomaticGainControlV1;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    .line 22
    .local v0, "_value":Landroid/hardware/audio/effect/VendorExtension;
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/audio/effect/AutomaticGainControlV1;->_tag:I

    .line 23
    iput-object v0, p0, Landroid/hardware/audio/effect/AutomaticGainControlV1;->_value:Ljava/lang/Object;

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
    iput p1, p0, Landroid/hardware/audio/effect/AutomaticGainControlV1;->_tag:I

    .line 32
    iput-object p2, p0, Landroid/hardware/audio/effect/AutomaticGainControlV1;->_value:Ljava/lang/Object;

    .line 33
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p0, p1}, Landroid/hardware/audio/effect/AutomaticGainControlV1;->readFromParcel(Landroid/os/Parcel;)V

    .line 28
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/audio/effect/AutomaticGainControlV1-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Landroid/hardware/audio/effect/AutomaticGainControlV1;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private _assertTag(I)V
    .locals 3
    .param p1, "tag"    # I

    .line 181
    invoke-virtual {p0}, Landroid/hardware/audio/effect/AutomaticGainControlV1;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 184
    return-void

    .line 182
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Landroid/hardware/audio/effect/AutomaticGainControlV1;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/audio/effect/AutomaticGainControlV1;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/audio/effect/AutomaticGainControlV1;->_tagString(I)Ljava/lang/String;

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

    .line 197
    iput p1, p0, Landroid/hardware/audio/effect/AutomaticGainControlV1;->_tag:I

    .line 198
    iput-object p2, p0, Landroid/hardware/audio/effect/AutomaticGainControlV1;->_value:Ljava/lang/Object;

    .line 199
    return-void
.end method

.method private _tagString(I)Ljava/lang/String;
    .locals 3
    .param p1, "_tag"    # I

    .line 187
    packed-switch p1, :pswitch_data_0

    .line 193
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

    .line 191
    :pswitch_0
    const-string v0, "enableLimiter"

    return-object v0

    .line 190
    :pswitch_1
    const-string/jumbo v0, "maxCompressionGainDb"

    return-object v0

    .line 189
    :pswitch_2
    const-string/jumbo v0, "targetPeakLevelDbFs"

    return-object v0

    .line 188
    :pswitch_3
    const-string/jumbo v0, "vendor"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private describeContents(Ljava/lang/Object;)I
    .locals 2
    .param p1, "_v"    # Ljava/lang/Object;

    .line 173
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 174
    :cond_0
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_1

    .line 175
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 177
    :cond_1
    return v0
.end method

.method public static enableLimiter(Z)Landroid/hardware/audio/effect/AutomaticGainControlV1;
    .locals 3
    .param p0, "_value"    # Z

    .line 87
    new-instance v0, Landroid/hardware/audio/effect/AutomaticGainControlV1;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Landroid/hardware/audio/effect/AutomaticGainControlV1;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static maxCompressionGainDb(I)Landroid/hardware/audio/effect/AutomaticGainControlV1;
    .locals 3
    .param p0, "_value"    # I

    .line 72
    new-instance v0, Landroid/hardware/audio/effect/AutomaticGainControlV1;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Landroid/hardware/audio/effect/AutomaticGainControlV1;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static targetPeakLevelDbFs(I)Landroid/hardware/audio/effect/AutomaticGainControlV1;
    .locals 3
    .param p0, "_value"    # I

    .line 57
    new-instance v0, Landroid/hardware/audio/effect/AutomaticGainControlV1;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Landroid/hardware/audio/effect/AutomaticGainControlV1;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static vendor(Landroid/hardware/audio/effect/VendorExtension;)Landroid/hardware/audio/effect/AutomaticGainControlV1;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/audio/effect/VendorExtension;

    .line 42
    new-instance v0, Landroid/hardware/audio/effect/AutomaticGainControlV1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/AutomaticGainControlV1;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/hardware/audio/effect/AutomaticGainControlV1;->getTag()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 167
    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/audio/effect/AutomaticGainControlV1;->getVendor()Landroid/hardware/audio/effect/VendorExtension;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/AutomaticGainControlV1;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 170
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getEnableLimiter()Z
    .locals 1

    .line 91
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/AutomaticGainControlV1;->_assertTag(I)V

    .line 92
    iget-object v0, p0, Landroid/hardware/audio/effect/AutomaticGainControlV1;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getMaxCompressionGainDb()I
    .locals 1

    .line 76
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/AutomaticGainControlV1;->_assertTag(I)V

    .line 77
    iget-object v0, p0, Landroid/hardware/audio/effect/AutomaticGainControlV1;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getStability()I
    .locals 1

    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method public getTag()I
    .locals 1

    .line 36
    iget v0, p0, Landroid/hardware/audio/effect/AutomaticGainControlV1;->_tag:I

    return v0
.end method

.method public getTargetPeakLevelDbFs()I
    .locals 1

    .line 61
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/AutomaticGainControlV1;->_assertTag(I)V

    .line 62
    iget-object v0, p0, Landroid/hardware/audio/effect/AutomaticGainControlV1;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getVendor()Landroid/hardware/audio/effect/VendorExtension;
    .locals 1

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/AutomaticGainControlV1;->_assertTag(I)V

    .line 47
    iget-object v0, p0, Landroid/hardware/audio/effect/AutomaticGainControlV1;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/audio/effect/VendorExtension;

    return-object v0
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
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 156
    .local v1, "_aidl_value":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/audio/effect/AutomaticGainControlV1;->_set(ILjava/lang/Object;)V

    .line 157
    return-void

    .line 150
    .end local v1    # "_aidl_value":Z
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 151
    .local v1, "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/audio/effect/AutomaticGainControlV1;->_set(ILjava/lang/Object;)V

    .line 152
    return-void

    .line 145
    .end local v1    # "_aidl_value":I
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 146
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/audio/effect/AutomaticGainControlV1;->_set(ILjava/lang/Object;)V

    .line 147
    return-void

    .line 140
    .end local v1    # "_aidl_value":I
    :pswitch_3
    sget-object v1, Landroid/hardware/audio/effect/VendorExtension;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/audio/effect/VendorExtension;

    .line 141
    .local v1, "_aidl_value":Landroid/hardware/audio/effect/VendorExtension;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/AutomaticGainControlV1;->_set(ILjava/lang/Object;)V

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

.method public setEnableLimiter(Z)V
    .locals 2
    .param p1, "_value"    # Z

    .line 96
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Landroid/hardware/audio/effect/AutomaticGainControlV1;->_set(ILjava/lang/Object;)V

    .line 97
    return-void
.end method

.method public setMaxCompressionGainDb(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 81
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Landroid/hardware/audio/effect/AutomaticGainControlV1;->_set(ILjava/lang/Object;)V

    .line 82
    return-void
.end method

.method public setTargetPeakLevelDbFs(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 66
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/hardware/audio/effect/AutomaticGainControlV1;->_set(ILjava/lang/Object;)V

    .line 67
    return-void
.end method

.method public setVendor(Landroid/hardware/audio/effect/VendorExtension;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/audio/effect/VendorExtension;

    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/AutomaticGainControlV1;->_set(ILjava/lang/Object;)V

    .line 52
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 117
    iget v0, p0, Landroid/hardware/audio/effect/AutomaticGainControlV1;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget v0, p0, Landroid/hardware/audio/effect/AutomaticGainControlV1;->_tag:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 129
    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/audio/effect/AutomaticGainControlV1;->getEnableLimiter()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    .line 126
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/audio/effect/AutomaticGainControlV1;->getMaxCompressionGainDb()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    goto :goto_0

    .line 123
    :pswitch_2
    invoke-virtual {p0}, Landroid/hardware/audio/effect/AutomaticGainControlV1;->getTargetPeakLevelDbFs()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    goto :goto_0

    .line 120
    :pswitch_3
    invoke-virtual {p0}, Landroid/hardware/audio/effect/AutomaticGainControlV1;->getVendor()Landroid/hardware/audio/effect/VendorExtension;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

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
