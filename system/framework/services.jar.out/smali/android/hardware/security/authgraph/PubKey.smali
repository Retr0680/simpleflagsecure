.class public final Landroid/hardware/security/authgraph/PubKey;
.super Ljava/lang/Object;
.source "PubKey.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/security/authgraph/PubKey$Tag;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/security/authgraph/PubKey;",
            ">;"
        }
    .end annotation
.end field

.field public static final plainKey:I = 0x0

.field public static final signedKey:I = 0x1


# instance fields
.field private _tag:I

.field private _value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    new-instance v0, Landroid/hardware/security/authgraph/PubKey$1;

    invoke-direct {v0}, Landroid/hardware/security/authgraph/PubKey$1;-><init>()V

    sput-object v0, Landroid/hardware/security/authgraph/PubKey;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    .line 20
    .local v0, "_value":Landroid/hardware/security/authgraph/PlainPubKey;
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/security/authgraph/PubKey;->_tag:I

    .line 21
    iput-object v0, p0, Landroid/hardware/security/authgraph/PubKey;->_value:Ljava/lang/Object;

    .line 22
    return-void
.end method

.method private constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Landroid/hardware/security/authgraph/PubKey;->_tag:I

    .line 30
    iput-object p2, p0, Landroid/hardware/security/authgraph/PubKey;->_value:Ljava/lang/Object;

    .line 31
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p0, p1}, Landroid/hardware/security/authgraph/PubKey;->readFromParcel(Landroid/os/Parcel;)V

    .line 26
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/security/authgraph/PubKey-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Landroid/hardware/security/authgraph/PubKey;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private _assertTag(I)V
    .locals 3
    .param p1, "tag"    # I

    .line 136
    invoke-virtual {p0}, Landroid/hardware/security/authgraph/PubKey;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 139
    return-void

    .line 137
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Landroid/hardware/security/authgraph/PubKey;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/security/authgraph/PubKey;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/security/authgraph/PubKey;->_tagString(I)Ljava/lang/String;

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

    .line 150
    iput p1, p0, Landroid/hardware/security/authgraph/PubKey;->_tag:I

    .line 151
    iput-object p2, p0, Landroid/hardware/security/authgraph/PubKey;->_value:Ljava/lang/Object;

    .line 152
    return-void
.end method

.method private _tagString(I)Ljava/lang/String;
    .locals 3
    .param p1, "_tag"    # I

    .line 142
    packed-switch p1, :pswitch_data_0

    .line 146
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

    .line 144
    :pswitch_0
    const-string/jumbo v0, "signedKey"

    return-object v0

    .line 143
    :pswitch_1
    const-string/jumbo v0, "plainKey"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private describeContents(Ljava/lang/Object;)I
    .locals 2
    .param p1, "_v"    # Ljava/lang/Object;

    .line 128
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 129
    :cond_0
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_1

    .line 130
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 132
    :cond_1
    return v0
.end method

.method public static plainKey(Landroid/hardware/security/authgraph/PlainPubKey;)Landroid/hardware/security/authgraph/PubKey;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/security/authgraph/PlainPubKey;

    .line 40
    new-instance v0, Landroid/hardware/security/authgraph/PubKey;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/hardware/security/authgraph/PubKey;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static signedKey(Landroid/hardware/security/authgraph/SignedPubKey;)Landroid/hardware/security/authgraph/PubKey;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/security/authgraph/SignedPubKey;

    .line 55
    new-instance v0, Landroid/hardware/security/authgraph/PubKey;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/hardware/security/authgraph/PubKey;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .line 116
    const/4 v0, 0x0

    .line 117
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/hardware/security/authgraph/PubKey;->getTag()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 122
    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/security/authgraph/PubKey;->getSignedKey()Landroid/hardware/security/authgraph/SignedPubKey;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/security/authgraph/PubKey;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    .line 119
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/security/authgraph/PubKey;->getPlainKey()Landroid/hardware/security/authgraph/PlainPubKey;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/security/authgraph/PubKey;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 120
    nop

    .line 125
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getPlainKey()Landroid/hardware/security/authgraph/PlainPubKey;
    .locals 1

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/security/authgraph/PubKey;->_assertTag(I)V

    .line 45
    iget-object v0, p0, Landroid/hardware/security/authgraph/PubKey;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/security/authgraph/PlainPubKey;

    return-object v0
.end method

.method public getSignedKey()Landroid/hardware/security/authgraph/SignedPubKey;
    .locals 1

    .line 59
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/security/authgraph/PubKey;->_assertTag(I)V

    .line 60
    iget-object v0, p0, Landroid/hardware/security/authgraph/PubKey;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/security/authgraph/SignedPubKey;

    return-object v0
.end method

.method public final getStability()I
    .locals 1

    .line 69
    const/4 v0, 0x1

    return v0
.end method

.method public getTag()I
    .locals 1

    .line 34
    iget v0, p0, Landroid/hardware/security/authgraph/PubKey;->_tag:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 99
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_0

    .line 111
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

    .line 107
    :pswitch_0
    sget-object v1, Landroid/hardware/security/authgraph/SignedPubKey;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/security/authgraph/SignedPubKey;

    .line 108
    .local v1, "_aidl_value":Landroid/hardware/security/authgraph/SignedPubKey;
    invoke-direct {p0, v0, v1}, Landroid/hardware/security/authgraph/PubKey;->_set(ILjava/lang/Object;)V

    .line 109
    return-void

    .line 102
    .end local v1    # "_aidl_value":Landroid/hardware/security/authgraph/SignedPubKey;
    :pswitch_1
    sget-object v1, Landroid/hardware/security/authgraph/PlainPubKey;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/security/authgraph/PlainPubKey;

    .line 103
    .local v1, "_aidl_value":Landroid/hardware/security/authgraph/PlainPubKey;
    invoke-direct {p0, v0, v1}, Landroid/hardware/security/authgraph/PubKey;->_set(ILjava/lang/Object;)V

    .line 104
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setPlainKey(Landroid/hardware/security/authgraph/PlainPubKey;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/security/authgraph/PlainPubKey;

    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/hardware/security/authgraph/PubKey;->_set(ILjava/lang/Object;)V

    .line 50
    return-void
.end method

.method public setSignedKey(Landroid/hardware/security/authgraph/SignedPubKey;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/security/authgraph/SignedPubKey;

    .line 64
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/hardware/security/authgraph/PubKey;->_set(ILjava/lang/Object;)V

    .line 65
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 85
    iget v0, p0, Landroid/hardware/security/authgraph/PubKey;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget v0, p0, Landroid/hardware/security/authgraph/PubKey;->_tag:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 91
    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/security/authgraph/PubKey;->getSignedKey()Landroid/hardware/security/authgraph/SignedPubKey;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 88
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/security/authgraph/PubKey;->getPlainKey()Landroid/hardware/security/authgraph/PlainPubKey;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 89
    nop

    .line 94
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
