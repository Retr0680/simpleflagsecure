.class public final Landroid/hardware/audio/effect/Processing$Type;
.super Ljava/lang/Object;
.source "Processing.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/audio/effect/Processing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/audio/effect/Processing$Type$Tag;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/audio/effect/Processing$Type;",
            ">;"
        }
    .end annotation
.end field

.field public static final source:I = 0x1

.field public static final streamType:I


# instance fields
.field private _tag:I

.field private _value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 139
    new-instance v0, Landroid/hardware/audio/effect/Processing$Type$1;

    invoke-direct {v0}, Landroid/hardware/audio/effect/Processing$Type$1;-><init>()V

    sput-object v0, Landroid/hardware/audio/effect/Processing$Type;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, -0x2

    .line 87
    .local v0, "_value":I
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/audio/effect/Processing$Type;->_tag:I

    .line 88
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/audio/effect/Processing$Type;->_value:Ljava/lang/Object;

    .line 89
    return-void
.end method

.method private constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput p1, p0, Landroid/hardware/audio/effect/Processing$Type;->_tag:I

    .line 97
    iput-object p2, p0, Landroid/hardware/audio/effect/Processing$Type;->_value:Ljava/lang/Object;

    .line 98
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-virtual {p0, p1}, Landroid/hardware/audio/effect/Processing$Type;->readFromParcel(Landroid/os/Parcel;)V

    .line 93
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/audio/effect/Processing-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Landroid/hardware/audio/effect/Processing$Type;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private _assertTag(I)V
    .locals 3
    .param p1, "tag"    # I

    .line 190
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Processing$Type;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 193
    return-void

    .line 191
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Landroid/hardware/audio/effect/Processing$Type;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/audio/effect/Processing$Type;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/audio/effect/Processing$Type;->_tagString(I)Ljava/lang/String;

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

    .line 204
    iput p1, p0, Landroid/hardware/audio/effect/Processing$Type;->_tag:I

    .line 205
    iput-object p2, p0, Landroid/hardware/audio/effect/Processing$Type;->_value:Ljava/lang/Object;

    .line 206
    return-void
.end method

.method private _tagString(I)Ljava/lang/String;
    .locals 3
    .param p1, "_tag"    # I

    .line 196
    packed-switch p1, :pswitch_data_0

    .line 200
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

    .line 198
    :pswitch_0
    const-string/jumbo v0, "source"

    return-object v0

    .line 197
    :pswitch_1
    const-string/jumbo v0, "streamType"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static source(I)Landroid/hardware/audio/effect/Processing$Type;
    .locals 3
    .param p0, "_value"    # I

    .line 122
    new-instance v0, Landroid/hardware/audio/effect/Processing$Type;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Landroid/hardware/audio/effect/Processing$Type;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static streamType(I)Landroid/hardware/audio/effect/Processing$Type;
    .locals 3
    .param p0, "_value"    # I

    .line 107
    new-instance v0, Landroid/hardware/audio/effect/Processing$Type;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/hardware/audio/effect/Processing$Type;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 183
    const/4 v0, 0x0

    .line 184
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Processing$Type;->getTag()I

    .line 186
    return v0
.end method

.method public getSource()I
    .locals 1

    .line 126
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Processing$Type;->_assertTag(I)V

    .line 127
    iget-object v0, p0, Landroid/hardware/audio/effect/Processing$Type;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getStability()I
    .locals 1

    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method public getStreamType()I
    .locals 1

    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Processing$Type;->_assertTag(I)V

    .line 112
    iget-object v0, p0, Landroid/hardware/audio/effect/Processing$Type;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getTag()I
    .locals 1

    .line 101
    iget v0, p0, Landroid/hardware/audio/effect/Processing$Type;->_tag:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 166
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_0

    .line 178
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

    .line 174
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 175
    .local v1, "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/audio/effect/Processing$Type;->_set(ILjava/lang/Object;)V

    .line 176
    return-void

    .line 169
    .end local v1    # "_aidl_value":I
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 170
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/audio/effect/Processing$Type;->_set(ILjava/lang/Object;)V

    .line 171
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setSource(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 131
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/hardware/audio/effect/Processing$Type;->_set(ILjava/lang/Object;)V

    .line 132
    return-void
.end method

.method public setStreamType(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 116
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Landroid/hardware/audio/effect/Processing$Type;->_set(ILjava/lang/Object;)V

    .line 117
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 152
    iget v0, p0, Landroid/hardware/audio/effect/Processing$Type;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget v0, p0, Landroid/hardware/audio/effect/Processing$Type;->_tag:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 158
    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Processing$Type;->getSource()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 155
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Processing$Type;->getStreamType()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    nop

    .line 161
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
