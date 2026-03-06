.class public final Landroid/hardware/audio/effect/HapticGenerator$Id;
.super Ljava/lang/Object;
.source "HapticGenerator.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/audio/effect/HapticGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Id"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/audio/effect/HapticGenerator$Id$Tag;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/audio/effect/HapticGenerator$Id;",
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

    .line 250
    new-instance v0, Landroid/hardware/audio/effect/HapticGenerator$Id$1;

    invoke-direct {v0}, Landroid/hardware/audio/effect/HapticGenerator$Id$1;-><init>()V

    sput-object v0, Landroid/hardware/audio/effect/HapticGenerator$Id;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    const/4 v0, 0x0

    .line 198
    .local v0, "_value":Landroid/hardware/audio/effect/VendorExtension;
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/audio/effect/HapticGenerator$Id;->_tag:I

    .line 199
    iput-object v0, p0, Landroid/hardware/audio/effect/HapticGenerator$Id;->_value:Ljava/lang/Object;

    .line 200
    return-void
.end method

.method private constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    iput p1, p0, Landroid/hardware/audio/effect/HapticGenerator$Id;->_tag:I

    .line 208
    iput-object p2, p0, Landroid/hardware/audio/effect/HapticGenerator$Id;->_value:Ljava/lang/Object;

    .line 209
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    invoke-virtual {p0, p1}, Landroid/hardware/audio/effect/HapticGenerator$Id;->readFromParcel(Landroid/os/Parcel;)V

    .line 204
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/audio/effect/HapticGenerator-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Landroid/hardware/audio/effect/HapticGenerator$Id;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private _assertTag(I)V
    .locals 3
    .param p1, "tag"    # I

    .line 311
    invoke-virtual {p0}, Landroid/hardware/audio/effect/HapticGenerator$Id;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 314
    return-void

    .line 312
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Landroid/hardware/audio/effect/HapticGenerator$Id;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/audio/effect/HapticGenerator$Id;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/audio/effect/HapticGenerator$Id;->_tagString(I)Ljava/lang/String;

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

    .line 325
    iput p1, p0, Landroid/hardware/audio/effect/HapticGenerator$Id;->_tag:I

    .line 326
    iput-object p2, p0, Landroid/hardware/audio/effect/HapticGenerator$Id;->_value:Ljava/lang/Object;

    .line 327
    return-void
.end method

.method private _tagString(I)Ljava/lang/String;
    .locals 3
    .param p1, "_tag"    # I

    .line 317
    packed-switch p1, :pswitch_data_0

    .line 321
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

    .line 319
    :pswitch_0
    const-string v0, "commonTag"

    return-object v0

    .line 318
    :pswitch_1
    const-string/jumbo v0, "vendorExtensionTag"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static commonTag(I)Landroid/hardware/audio/effect/HapticGenerator$Id;
    .locals 3
    .param p0, "_value"    # I

    .line 233
    new-instance v0, Landroid/hardware/audio/effect/HapticGenerator$Id;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Landroid/hardware/audio/effect/HapticGenerator$Id;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method private describeContents(Ljava/lang/Object;)I
    .locals 2
    .param p1, "_v"    # Ljava/lang/Object;

    .line 303
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 304
    :cond_0
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_1

    .line 305
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 307
    :cond_1
    return v0
.end method

.method public static vendorExtensionTag(Landroid/hardware/audio/effect/VendorExtension;)Landroid/hardware/audio/effect/HapticGenerator$Id;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/audio/effect/VendorExtension;

    .line 218
    new-instance v0, Landroid/hardware/audio/effect/HapticGenerator$Id;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/HapticGenerator$Id;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .line 294
    const/4 v0, 0x0

    .line 295
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/hardware/audio/effect/HapticGenerator$Id;->getTag()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 297
    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/audio/effect/HapticGenerator$Id;->getVendorExtensionTag()Landroid/hardware/audio/effect/VendorExtension;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/HapticGenerator$Id;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 300
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

    .line 237
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/HapticGenerator$Id;->_assertTag(I)V

    .line 238
    iget-object v0, p0, Landroid/hardware/audio/effect/HapticGenerator$Id;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getStability()I
    .locals 1

    .line 247
    const/4 v0, 0x1

    return v0
.end method

.method public getTag()I
    .locals 1

    .line 212
    iget v0, p0, Landroid/hardware/audio/effect/HapticGenerator$Id;->_tag:I

    return v0
.end method

.method public getVendorExtensionTag()Landroid/hardware/audio/effect/VendorExtension;
    .locals 1

    .line 222
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/HapticGenerator$Id;->_assertTag(I)V

    .line 223
    iget-object v0, p0, Landroid/hardware/audio/effect/HapticGenerator$Id;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/audio/effect/VendorExtension;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 276
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 277
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_0

    .line 289
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

    .line 285
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 286
    .local v1, "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/audio/effect/HapticGenerator$Id;->_set(ILjava/lang/Object;)V

    .line 287
    return-void

    .line 280
    .end local v1    # "_aidl_value":I
    :pswitch_1
    sget-object v1, Landroid/hardware/audio/effect/VendorExtension;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/audio/effect/VendorExtension;

    .line 281
    .local v1, "_aidl_value":Landroid/hardware/audio/effect/VendorExtension;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/HapticGenerator$Id;->_set(ILjava/lang/Object;)V

    .line 282
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

    .line 242
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/hardware/audio/effect/HapticGenerator$Id;->_set(ILjava/lang/Object;)V

    .line 243
    return-void
.end method

.method public setVendorExtensionTag(Landroid/hardware/audio/effect/VendorExtension;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/audio/effect/VendorExtension;

    .line 227
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/HapticGenerator$Id;->_set(ILjava/lang/Object;)V

    .line 228
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 263
    iget v0, p0, Landroid/hardware/audio/effect/HapticGenerator$Id;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    iget v0, p0, Landroid/hardware/audio/effect/HapticGenerator$Id;->_tag:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 269
    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/audio/effect/HapticGenerator$Id;->getCommonTag()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 266
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/audio/effect/HapticGenerator$Id;->getVendorExtensionTag()Landroid/hardware/audio/effect/VendorExtension;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 267
    nop

    .line 272
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
