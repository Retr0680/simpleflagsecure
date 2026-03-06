.class public final Landroid/frameworks/vibrator/VibrationParam;
.super Ljava/lang/Object;
.source "VibrationParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/frameworks/vibrator/VibrationParam$Tag;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/frameworks/vibrator/VibrationParam;",
            ">;"
        }
    .end annotation
.end field

.field public static final scale:I


# instance fields
.field private _tag:I

.field private _value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    new-instance v0, Landroid/frameworks/vibrator/VibrationParam$1;

    invoke-direct {v0}, Landroid/frameworks/vibrator/VibrationParam$1;-><init>()V

    sput-object v0, Landroid/frameworks/vibrator/VibrationParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    .line 19
    .local v0, "_value":Landroid/frameworks/vibrator/ScaleParam;
    const/4 v1, 0x0

    iput v1, p0, Landroid/frameworks/vibrator/VibrationParam;->_tag:I

    .line 20
    iput-object v0, p0, Landroid/frameworks/vibrator/VibrationParam;->_value:Ljava/lang/Object;

    .line 21
    return-void
.end method

.method private constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Landroid/frameworks/vibrator/VibrationParam;->_tag:I

    .line 29
    iput-object p2, p0, Landroid/frameworks/vibrator/VibrationParam;->_value:Ljava/lang/Object;

    .line 30
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p0, p1}, Landroid/frameworks/vibrator/VibrationParam;->readFromParcel(Landroid/os/Parcel;)V

    .line 25
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/frameworks/vibrator/VibrationParam-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Landroid/frameworks/vibrator/VibrationParam;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private _assertTag(I)V
    .locals 3
    .param p1, "tag"    # I

    .line 109
    invoke-virtual {p0}, Landroid/frameworks/vibrator/VibrationParam;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 112
    return-void

    .line 110
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Landroid/frameworks/vibrator/VibrationParam;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/frameworks/vibrator/VibrationParam;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/frameworks/vibrator/VibrationParam;->_tagString(I)Ljava/lang/String;

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

    .line 122
    iput p1, p0, Landroid/frameworks/vibrator/VibrationParam;->_tag:I

    .line 123
    iput-object p2, p0, Landroid/frameworks/vibrator/VibrationParam;->_value:Ljava/lang/Object;

    .line 124
    return-void
.end method

.method private _tagString(I)Ljava/lang/String;
    .locals 3
    .param p1, "_tag"    # I

    .line 115
    packed-switch p1, :pswitch_data_0

    .line 118
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

    .line 116
    :pswitch_0
    const-string/jumbo v0, "scale"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private describeContents(Ljava/lang/Object;)I
    .locals 2
    .param p1, "_v"    # Ljava/lang/Object;

    .line 101
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 102
    :cond_0
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_1

    .line 103
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 105
    :cond_1
    return v0
.end method

.method public static scale(Landroid/frameworks/vibrator/ScaleParam;)Landroid/frameworks/vibrator/VibrationParam;
    .locals 2
    .param p0, "_value"    # Landroid/frameworks/vibrator/ScaleParam;

    .line 39
    new-instance v0, Landroid/frameworks/vibrator/VibrationParam;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/frameworks/vibrator/VibrationParam;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/frameworks/vibrator/VibrationParam;->getTag()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 95
    :pswitch_0
    invoke-virtual {p0}, Landroid/frameworks/vibrator/VibrationParam;->getScale()Landroid/frameworks/vibrator/ScaleParam;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/frameworks/vibrator/VibrationParam;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 98
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getScale()Landroid/frameworks/vibrator/ScaleParam;
    .locals 1

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/frameworks/vibrator/VibrationParam;->_assertTag(I)V

    .line 44
    iget-object v0, p0, Landroid/frameworks/vibrator/VibrationParam;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/frameworks/vibrator/ScaleParam;

    return-object v0
.end method

.method public final getStability()I
    .locals 1

    .line 53
    const/4 v0, 0x1

    return v0
.end method

.method public getTag()I
    .locals 1

    .line 33
    iget v0, p0, Landroid/frameworks/vibrator/VibrationParam;->_tag:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 80
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_0

    .line 87
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

    .line 83
    :pswitch_0
    sget-object v1, Landroid/frameworks/vibrator/ScaleParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/frameworks/vibrator/ScaleParam;

    .line 84
    .local v1, "_aidl_value":Landroid/frameworks/vibrator/ScaleParam;
    invoke-direct {p0, v0, v1}, Landroid/frameworks/vibrator/VibrationParam;->_set(ILjava/lang/Object;)V

    .line 85
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setScale(Landroid/frameworks/vibrator/ScaleParam;)V
    .locals 1
    .param p1, "_value"    # Landroid/frameworks/vibrator/ScaleParam;

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/frameworks/vibrator/VibrationParam;->_set(ILjava/lang/Object;)V

    .line 49
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 69
    iget v0, p0, Landroid/frameworks/vibrator/VibrationParam;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget v0, p0, Landroid/frameworks/vibrator/VibrationParam;->_tag:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 72
    :pswitch_0
    invoke-virtual {p0}, Landroid/frameworks/vibrator/VibrationParam;->getScale()Landroid/frameworks/vibrator/ScaleParam;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 75
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
