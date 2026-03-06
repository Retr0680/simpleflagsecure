.class public final Landroid/hardware/audio/effect/LoudnessEnhancer$Id;
.super Ljava/lang/Object;
.source "LoudnessEnhancer.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/audio/effect/LoudnessEnhancer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Id"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/audio/effect/LoudnessEnhancer$Id$Tag;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/audio/effect/LoudnessEnhancer$Id;",
            ">;"
        }
    .end annotation
.end field

.field public static final commonTag:I = 0x1

.field public static final vendorExtensionTag:I


# instance fields
.field private _tag:I

.field private _value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 212
    new-instance v0, Landroid/hardware/audio/effect/LoudnessEnhancer$Id$1;

    invoke-direct {v0}, Landroid/hardware/audio/effect/LoudnessEnhancer$Id$1;-><init>()V

    sput-object v0, Landroid/hardware/audio/effect/LoudnessEnhancer$Id;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    const/4 v0, 0x0

    .line 160
    .local v0, "_value":Landroid/hardware/audio/effect/VendorExtension;
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/audio/effect/LoudnessEnhancer$Id;->_tag:I

    .line 161
    iput-object v0, p0, Landroid/hardware/audio/effect/LoudnessEnhancer$Id;->_value:Ljava/lang/Object;

    .line 162
    return-void
.end method

.method private constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput p1, p0, Landroid/hardware/audio/effect/LoudnessEnhancer$Id;->_tag:I

    .line 170
    iput-object p2, p0, Landroid/hardware/audio/effect/LoudnessEnhancer$Id;->_value:Ljava/lang/Object;

    .line 171
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    invoke-virtual {p0, p1}, Landroid/hardware/audio/effect/LoudnessEnhancer$Id;->readFromParcel(Landroid/os/Parcel;)V

    .line 166
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/audio/effect/LoudnessEnhancer-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Landroid/hardware/audio/effect/LoudnessEnhancer$Id;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private _assertTag(I)V
    .locals 3
    .param p1, "tag"    # I

    .line 273
    invoke-virtual {p0}, Landroid/hardware/audio/effect/LoudnessEnhancer$Id;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 276
    return-void

    .line 274
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Landroid/hardware/audio/effect/LoudnessEnhancer$Id;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/audio/effect/LoudnessEnhancer$Id;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/audio/effect/LoudnessEnhancer$Id;->_tagString(I)Ljava/lang/String;

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

    .line 287
    iput p1, p0, Landroid/hardware/audio/effect/LoudnessEnhancer$Id;->_tag:I

    .line 288
    iput-object p2, p0, Landroid/hardware/audio/effect/LoudnessEnhancer$Id;->_value:Ljava/lang/Object;

    .line 289
    return-void
.end method

.method private _tagString(I)Ljava/lang/String;
    .locals 3
    .param p1, "_tag"    # I

    .line 279
    packed-switch p1, :pswitch_data_0

    .line 283
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

    .line 281
    :pswitch_0
    const-string v0, "commonTag"

    return-object v0

    .line 280
    :pswitch_1
    const-string/jumbo v0, "vendorExtensionTag"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static commonTag(I)Landroid/hardware/audio/effect/LoudnessEnhancer$Id;
    .locals 3
    .param p0, "_value"    # I

    .line 195
    new-instance v0, Landroid/hardware/audio/effect/LoudnessEnhancer$Id;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Landroid/hardware/audio/effect/LoudnessEnhancer$Id;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method private describeContents(Ljava/lang/Object;)I
    .locals 2
    .param p1, "_v"    # Ljava/lang/Object;

    .line 265
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 266
    :cond_0
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_1

    .line 267
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 269
    :cond_1
    return v0
.end method

.method public static vendorExtensionTag(Landroid/hardware/audio/effect/VendorExtension;)Landroid/hardware/audio/effect/LoudnessEnhancer$Id;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/audio/effect/VendorExtension;

    .line 180
    new-instance v0, Landroid/hardware/audio/effect/LoudnessEnhancer$Id;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/LoudnessEnhancer$Id;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .line 256
    const/4 v0, 0x0

    .line 257
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/hardware/audio/effect/LoudnessEnhancer$Id;->getTag()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 259
    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/audio/effect/LoudnessEnhancer$Id;->getVendorExtensionTag()Landroid/hardware/audio/effect/VendorExtension;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/LoudnessEnhancer$Id;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 262
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getCommonTag()I
    .locals 1

    .line 199
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/LoudnessEnhancer$Id;->_assertTag(I)V

    .line 200
    iget-object v0, p0, Landroid/hardware/audio/effect/LoudnessEnhancer$Id;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getStability()I
    .locals 1

    .line 209
    const/4 v0, 0x1

    return v0
.end method

.method public getTag()I
    .locals 1

    .line 174
    iget v0, p0, Landroid/hardware/audio/effect/LoudnessEnhancer$Id;->_tag:I

    return v0
.end method

.method public getVendorExtensionTag()Landroid/hardware/audio/effect/VendorExtension;
    .locals 1

    .line 184
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/LoudnessEnhancer$Id;->_assertTag(I)V

    .line 185
    iget-object v0, p0, Landroid/hardware/audio/effect/LoudnessEnhancer$Id;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/audio/effect/VendorExtension;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 238
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 239
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_0

    .line 251
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

    .line 247
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 248
    .local v1, "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/audio/effect/LoudnessEnhancer$Id;->_set(ILjava/lang/Object;)V

    .line 249
    return-void

    .line 242
    .end local v1    # "_aidl_value":I
    :pswitch_1
    sget-object v1, Landroid/hardware/audio/effect/VendorExtension;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/audio/effect/VendorExtension;

    .line 243
    .local v1, "_aidl_value":Landroid/hardware/audio/effect/VendorExtension;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/LoudnessEnhancer$Id;->_set(ILjava/lang/Object;)V

    .line 244
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setCommonTag(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 204
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/hardware/audio/effect/LoudnessEnhancer$Id;->_set(ILjava/lang/Object;)V

    .line 205
    return-void
.end method

.method public setVendorExtensionTag(Landroid/hardware/audio/effect/VendorExtension;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/audio/effect/VendorExtension;

    .line 189
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/LoudnessEnhancer$Id;->_set(ILjava/lang/Object;)V

    .line 190
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 225
    iget v0, p0, Landroid/hardware/audio/effect/LoudnessEnhancer$Id;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    iget v0, p0, Landroid/hardware/audio/effect/LoudnessEnhancer$Id;->_tag:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 231
    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/audio/effect/LoudnessEnhancer$Id;->getCommonTag()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 228
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/audio/effect/LoudnessEnhancer$Id;->getVendorExtensionTag()Landroid/hardware/audio/effect/VendorExtension;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 229
    nop

    .line 234
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
