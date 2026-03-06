.class public Landroid/hardware/audio/effect/IEffect$OpenEffectReturn;
.super Ljava/lang/Object;
.source "IEffect.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/audio/effect/IEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OpenEffectReturn"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/audio/effect/IEffect$OpenEffectReturn;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public inputDataMQ:Landroid/hardware/common/fmq/MQDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/common/fmq/MQDescriptor<",
            "Ljava/lang/Float;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public outputDataMQ:Landroid/hardware/common/fmq/MQDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/common/fmq/MQDescriptor<",
            "Ljava/lang/Float;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public statusMQ:Landroid/hardware/common/fmq/MQDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/common/fmq/MQDescriptor<",
            "Landroid/hardware/audio/effect/IEffect$Status;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 451
    new-instance v0, Landroid/hardware/audio/effect/IEffect$OpenEffectReturn$1;

    invoke-direct {v0}, Landroid/hardware/audio/effect/IEffect$OpenEffectReturn$1;-><init>()V

    sput-object v0, Landroid/hardware/audio/effect/IEffect$OpenEffectReturn;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private describeContents(Ljava/lang/Object;)I
    .locals 2
    .param p1, "_v"    # Ljava/lang/Object;

    .line 503
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 504
    :cond_0
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_1

    .line 505
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 507
    :cond_1
    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .line 496
    const/4 v0, 0x0

    .line 497
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/hardware/audio/effect/IEffect$OpenEffectReturn;->statusMQ:Landroid/hardware/common/fmq/MQDescriptor;

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/IEffect$OpenEffectReturn;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 498
    iget-object v1, p0, Landroid/hardware/audio/effect/IEffect$OpenEffectReturn;->inputDataMQ:Landroid/hardware/common/fmq/MQDescriptor;

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/IEffect$OpenEffectReturn;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 499
    iget-object v1, p0, Landroid/hardware/audio/effect/IEffect$OpenEffectReturn;->outputDataMQ:Landroid/hardware/common/fmq/MQDescriptor;

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/IEffect$OpenEffectReturn;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 500
    return v0
.end method

.method public final getStability()I
    .locals 1

    .line 450
    const/4 v0, 0x1

    return v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 477
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 478
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 480
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_7

    .line 481
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1

    .line 488
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_0

    .line 491
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 481
    return-void

    .line 489
    :cond_0
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 482
    :cond_1
    :try_start_1
    sget-object v2, Landroid/hardware/common/fmq/MQDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/common/fmq/MQDescriptor;

    iput-object v2, p0, Landroid/hardware/audio/effect/IEffect$OpenEffectReturn;->statusMQ:Landroid/hardware/common/fmq/MQDescriptor;

    .line 483
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_3

    .line 488
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_2

    .line 491
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 483
    return-void

    .line 489
    :cond_2
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 484
    :cond_3
    :try_start_2
    sget-object v2, Landroid/hardware/common/fmq/MQDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/common/fmq/MQDescriptor;

    iput-object v2, p0, Landroid/hardware/audio/effect/IEffect$OpenEffectReturn;->inputDataMQ:Landroid/hardware/common/fmq/MQDescriptor;

    .line 485
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5

    .line 488
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_4

    .line 491
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 485
    return-void

    .line 489
    :cond_4
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 486
    :cond_5
    :try_start_3
    sget-object v2, Landroid/hardware/common/fmq/MQDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/common/fmq/MQDescriptor;

    iput-object v2, p0, Landroid/hardware/audio/effect/IEffect$OpenEffectReturn;->outputDataMQ:Landroid/hardware/common/fmq/MQDescriptor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 488
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_6

    .line 491
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 492
    nop

    .line 493
    return-void

    .line 489
    :cond_6
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 488
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 480
    :cond_7
    :try_start_4
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/audio/effect/IEffect$OpenEffectReturn;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 488
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/audio/effect/IEffect$OpenEffectReturn;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_0
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_8

    .line 489
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 491
    :cond_8
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 492
    throw v2
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 465
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 466
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 467
    iget-object v1, p0, Landroid/hardware/audio/effect/IEffect$OpenEffectReturn;->statusMQ:Landroid/hardware/common/fmq/MQDescriptor;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 468
    iget-object v1, p0, Landroid/hardware/audio/effect/IEffect$OpenEffectReturn;->inputDataMQ:Landroid/hardware/common/fmq/MQDescriptor;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 469
    iget-object v1, p0, Landroid/hardware/audio/effect/IEffect$OpenEffectReturn;->outputDataMQ:Landroid/hardware/common/fmq/MQDescriptor;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 470
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 471
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 472
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 473
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 474
    return-void
.end method
