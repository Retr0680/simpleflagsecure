.class public final Landroid/hardware/audio/effect/PresetReverb$Id;
.super Ljava/lang/Object;
.source "PresetReverb.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/audio/effect/PresetReverb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Id"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/audio/effect/PresetReverb$Id$Tag;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/audio/effect/PresetReverb$Id;",
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

    .line 246
    new-instance v0, Landroid/hardware/audio/effect/PresetReverb$Id$1;

    invoke-direct {v0}, Landroid/hardware/audio/effect/PresetReverb$Id$1;-><init>()V

    sput-object v0, Landroid/hardware/audio/effect/PresetReverb$Id;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    const/4 v0, 0x0

    .line 194
    .local v0, "_value":Landroid/hardware/audio/effect/VendorExtension;
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/audio/effect/PresetReverb$Id;->_tag:I

    .line 195
    iput-object v0, p0, Landroid/hardware/audio/effect/PresetReverb$Id;->_value:Ljava/lang/Object;

    .line 196
    return-void
.end method

.method private constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput p1, p0, Landroid/hardware/audio/effect/PresetReverb$Id;->_tag:I

    .line 204
    iput-object p2, p0, Landroid/hardware/audio/effect/PresetReverb$Id;->_value:Ljava/lang/Object;

    .line 205
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    invoke-virtual {p0, p1}, Landroid/hardware/audio/effect/PresetReverb$Id;->readFromParcel(Landroid/os/Parcel;)V

    .line 200
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/audio/effect/PresetReverb-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Landroid/hardware/audio/effect/PresetReverb$Id;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private _assertTag(I)V
    .locals 3
    .param p1, "tag"    # I

    .line 307
    invoke-virtual {p0}, Landroid/hardware/audio/effect/PresetReverb$Id;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 310
    return-void

    .line 308
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Landroid/hardware/audio/effect/PresetReverb$Id;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/audio/effect/PresetReverb$Id;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/audio/effect/PresetReverb$Id;->_tagString(I)Ljava/lang/String;

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

    .line 321
    iput p1, p0, Landroid/hardware/audio/effect/PresetReverb$Id;->_tag:I

    .line 322
    iput-object p2, p0, Landroid/hardware/audio/effect/PresetReverb$Id;->_value:Ljava/lang/Object;

    .line 323
    return-void
.end method

.method private _tagString(I)Ljava/lang/String;
    .locals 3
    .param p1, "_tag"    # I

    .line 313
    packed-switch p1, :pswitch_data_0

    .line 317
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

    .line 315
    :pswitch_0
    const-string v0, "commonTag"

    return-object v0

    .line 314
    :pswitch_1
    const-string/jumbo v0, "vendorExtensionTag"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static commonTag(I)Landroid/hardware/audio/effect/PresetReverb$Id;
    .locals 3
    .param p0, "_value"    # I

    .line 229
    new-instance v0, Landroid/hardware/audio/effect/PresetReverb$Id;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Landroid/hardware/audio/effect/PresetReverb$Id;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method private describeContents(Ljava/lang/Object;)I
    .locals 2
    .param p1, "_v"    # Ljava/lang/Object;

    .line 299
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 300
    :cond_0
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_1

    .line 301
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 303
    :cond_1
    return v0
.end method

.method public static vendorExtensionTag(Landroid/hardware/audio/effect/VendorExtension;)Landroid/hardware/audio/effect/PresetReverb$Id;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/audio/effect/VendorExtension;

    .line 214
    new-instance v0, Landroid/hardware/audio/effect/PresetReverb$Id;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/PresetReverb$Id;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .line 290
    const/4 v0, 0x0

    .line 291
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/hardware/audio/effect/PresetReverb$Id;->getTag()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 293
    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/audio/effect/PresetReverb$Id;->getVendorExtensionTag()Landroid/hardware/audio/effect/VendorExtension;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/PresetReverb$Id;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 296
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

    .line 233
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/PresetReverb$Id;->_assertTag(I)V

    .line 234
    iget-object v0, p0, Landroid/hardware/audio/effect/PresetReverb$Id;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getStability()I
    .locals 1

    .line 243
    const/4 v0, 0x1

    return v0
.end method

.method public getTag()I
    .locals 1

    .line 208
    iget v0, p0, Landroid/hardware/audio/effect/PresetReverb$Id;->_tag:I

    return v0
.end method

.method public getVendorExtensionTag()Landroid/hardware/audio/effect/VendorExtension;
    .locals 1

    .line 218
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/PresetReverb$Id;->_assertTag(I)V

    .line 219
    iget-object v0, p0, Landroid/hardware/audio/effect/PresetReverb$Id;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/audio/effect/VendorExtension;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 272
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 273
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_0

    .line 285
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

    .line 281
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 282
    .local v1, "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/audio/effect/PresetReverb$Id;->_set(ILjava/lang/Object;)V

    .line 283
    return-void

    .line 276
    .end local v1    # "_aidl_value":I
    :pswitch_1
    sget-object v1, Landroid/hardware/audio/effect/VendorExtension;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/audio/effect/VendorExtension;

    .line 277
    .local v1, "_aidl_value":Landroid/hardware/audio/effect/VendorExtension;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/PresetReverb$Id;->_set(ILjava/lang/Object;)V

    .line 278
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

    .line 238
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/hardware/audio/effect/PresetReverb$Id;->_set(ILjava/lang/Object;)V

    .line 239
    return-void
.end method

.method public setVendorExtensionTag(Landroid/hardware/audio/effect/VendorExtension;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/audio/effect/VendorExtension;

    .line 223
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/PresetReverb$Id;->_set(ILjava/lang/Object;)V

    .line 224
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 259
    iget v0, p0, Landroid/hardware/audio/effect/PresetReverb$Id;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    iget v0, p0, Landroid/hardware/audio/effect/PresetReverb$Id;->_tag:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 265
    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/audio/effect/PresetReverb$Id;->getCommonTag()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 262
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/audio/effect/PresetReverb$Id;->getVendorExtensionTag()Landroid/hardware/audio/effect/VendorExtension;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 263
    nop

    .line 268
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
