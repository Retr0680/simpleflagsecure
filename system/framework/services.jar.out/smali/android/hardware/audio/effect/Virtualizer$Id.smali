.class public final Landroid/hardware/audio/effect/Virtualizer$Id;
.super Ljava/lang/Object;
.source "Virtualizer.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/audio/effect/Virtualizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Id"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/audio/effect/Virtualizer$Id$Tag;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/audio/effect/Virtualizer$Id;",
            ">;"
        }
    .end annotation
.end field

.field public static final commonTag:I = 0x1

.field public static final speakerAnglesPayload:I = 0x2

.field public static final vendorExtensionTag:I


# instance fields
.field private _tag:I

.field private _value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 291
    new-instance v0, Landroid/hardware/audio/effect/Virtualizer$Id$1;

    invoke-direct {v0}, Landroid/hardware/audio/effect/Virtualizer$Id$1;-><init>()V

    sput-object v0, Landroid/hardware/audio/effect/Virtualizer$Id;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    const/4 v0, 0x0

    .line 224
    .local v0, "_value":Landroid/hardware/audio/effect/VendorExtension;
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/audio/effect/Virtualizer$Id;->_tag:I

    .line 225
    iput-object v0, p0, Landroid/hardware/audio/effect/Virtualizer$Id;->_value:Ljava/lang/Object;

    .line 226
    return-void
.end method

.method private constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput p1, p0, Landroid/hardware/audio/effect/Virtualizer$Id;->_tag:I

    .line 234
    iput-object p2, p0, Landroid/hardware/audio/effect/Virtualizer$Id;->_value:Ljava/lang/Object;

    .line 235
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    invoke-virtual {p0, p1}, Landroid/hardware/audio/effect/Virtualizer$Id;->readFromParcel(Landroid/os/Parcel;)V

    .line 230
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/audio/effect/Virtualizer-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Landroid/hardware/audio/effect/Virtualizer$Id;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private _assertTag(I)V
    .locals 3
    .param p1, "tag"    # I

    .line 363
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Virtualizer$Id;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 366
    return-void

    .line 364
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Landroid/hardware/audio/effect/Virtualizer$Id;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/audio/effect/Virtualizer$Id;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/audio/effect/Virtualizer$Id;->_tagString(I)Ljava/lang/String;

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

    .line 378
    iput p1, p0, Landroid/hardware/audio/effect/Virtualizer$Id;->_tag:I

    .line 379
    iput-object p2, p0, Landroid/hardware/audio/effect/Virtualizer$Id;->_value:Ljava/lang/Object;

    .line 380
    return-void
.end method

.method private _tagString(I)Ljava/lang/String;
    .locals 3
    .param p1, "_tag"    # I

    .line 369
    packed-switch p1, :pswitch_data_0

    .line 374
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

    .line 372
    :pswitch_0
    const-string/jumbo v0, "speakerAnglesPayload"

    return-object v0

    .line 371
    :pswitch_1
    const-string v0, "commonTag"

    return-object v0

    .line 370
    :pswitch_2
    const-string/jumbo v0, "vendorExtensionTag"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static commonTag(I)Landroid/hardware/audio/effect/Virtualizer$Id;
    .locals 3
    .param p0, "_value"    # I

    .line 259
    new-instance v0, Landroid/hardware/audio/effect/Virtualizer$Id;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Landroid/hardware/audio/effect/Virtualizer$Id;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method private describeContents(Ljava/lang/Object;)I
    .locals 2
    .param p1, "_v"    # Ljava/lang/Object;

    .line 355
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 356
    :cond_0
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_1

    .line 357
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 359
    :cond_1
    return v0
.end method

.method public static speakerAnglesPayload(Landroid/hardware/audio/effect/Virtualizer$SpeakerAnglesPayload;)Landroid/hardware/audio/effect/Virtualizer$Id;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/audio/effect/Virtualizer$SpeakerAnglesPayload;

    .line 274
    new-instance v0, Landroid/hardware/audio/effect/Virtualizer$Id;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/Virtualizer$Id;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static vendorExtensionTag(Landroid/hardware/audio/effect/VendorExtension;)Landroid/hardware/audio/effect/Virtualizer$Id;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/audio/effect/VendorExtension;

    .line 244
    new-instance v0, Landroid/hardware/audio/effect/Virtualizer$Id;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/Virtualizer$Id;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .line 343
    const/4 v0, 0x0

    .line 344
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Virtualizer$Id;->getTag()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 349
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Virtualizer$Id;->getSpeakerAnglesPayload()Landroid/hardware/audio/effect/Virtualizer$SpeakerAnglesPayload;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/Virtualizer$Id;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    .line 346
    :pswitch_2
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Virtualizer$Id;->getVendorExtensionTag()Landroid/hardware/audio/effect/VendorExtension;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/Virtualizer$Id;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 347
    nop

    .line 352
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getCommonTag()I
    .locals 1

    .line 263
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Virtualizer$Id;->_assertTag(I)V

    .line 264
    iget-object v0, p0, Landroid/hardware/audio/effect/Virtualizer$Id;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSpeakerAnglesPayload()Landroid/hardware/audio/effect/Virtualizer$SpeakerAnglesPayload;
    .locals 1

    .line 278
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Virtualizer$Id;->_assertTag(I)V

    .line 279
    iget-object v0, p0, Landroid/hardware/audio/effect/Virtualizer$Id;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/audio/effect/Virtualizer$SpeakerAnglesPayload;

    return-object v0
.end method

.method public final getStability()I
    .locals 1

    .line 288
    const/4 v0, 0x1

    return v0
.end method

.method public getTag()I
    .locals 1

    .line 238
    iget v0, p0, Landroid/hardware/audio/effect/Virtualizer$Id;->_tag:I

    return v0
.end method

.method public getVendorExtensionTag()Landroid/hardware/audio/effect/VendorExtension;
    .locals 1

    .line 248
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Virtualizer$Id;->_assertTag(I)V

    .line 249
    iget-object v0, p0, Landroid/hardware/audio/effect/Virtualizer$Id;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/audio/effect/VendorExtension;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 320
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 321
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_0

    .line 338
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

    .line 334
    :pswitch_0
    sget-object v1, Landroid/hardware/audio/effect/Virtualizer$SpeakerAnglesPayload;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/audio/effect/Virtualizer$SpeakerAnglesPayload;

    .line 335
    .local v1, "_aidl_value":Landroid/hardware/audio/effect/Virtualizer$SpeakerAnglesPayload;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/Virtualizer$Id;->_set(ILjava/lang/Object;)V

    .line 336
    return-void

    .line 329
    .end local v1    # "_aidl_value":Landroid/hardware/audio/effect/Virtualizer$SpeakerAnglesPayload;
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 330
    .local v1, "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/audio/effect/Virtualizer$Id;->_set(ILjava/lang/Object;)V

    .line 331
    return-void

    .line 324
    .end local v1    # "_aidl_value":I
    :pswitch_2
    sget-object v1, Landroid/hardware/audio/effect/VendorExtension;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/audio/effect/VendorExtension;

    .line 325
    .local v1, "_aidl_value":Landroid/hardware/audio/effect/VendorExtension;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/Virtualizer$Id;->_set(ILjava/lang/Object;)V

    .line 326
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setCommonTag(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 268
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/hardware/audio/effect/Virtualizer$Id;->_set(ILjava/lang/Object;)V

    .line 269
    return-void
.end method

.method public setSpeakerAnglesPayload(Landroid/hardware/audio/effect/Virtualizer$SpeakerAnglesPayload;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/audio/effect/Virtualizer$SpeakerAnglesPayload;

    .line 283
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/Virtualizer$Id;->_set(ILjava/lang/Object;)V

    .line 284
    return-void
.end method

.method public setVendorExtensionTag(Landroid/hardware/audio/effect/VendorExtension;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/audio/effect/VendorExtension;

    .line 253
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/Virtualizer$Id;->_set(ILjava/lang/Object;)V

    .line 254
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 304
    iget v0, p0, Landroid/hardware/audio/effect/Virtualizer$Id;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    iget v0, p0, Landroid/hardware/audio/effect/Virtualizer$Id;->_tag:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 313
    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Virtualizer$Id;->getSpeakerAnglesPayload()Landroid/hardware/audio/effect/Virtualizer$SpeakerAnglesPayload;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 310
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Virtualizer$Id;->getCommonTag()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 311
    goto :goto_0

    .line 307
    :pswitch_2
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Virtualizer$Id;->getVendorExtensionTag()Landroid/hardware/audio/effect/VendorExtension;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 308
    nop

    .line 316
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
