.class public final Landroid/hardware/broadcastradio/Metadata;
.super Ljava/lang/Object;
.source "Metadata.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/broadcastradio/Metadata$Tag;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/broadcastradio/Metadata;",
            ">;"
        }
    .end annotation
.end field

.field public static final albumArt:I = 0x8

.field public static final commentActualText:I = 0x12

.field public static final commentShortDescription:I = 0x11

.field public static final commercial:I = 0x13

.field public static final dabComponentName:I = 0xe

.field public static final dabComponentNameShort:I = 0xf

.field public static final dabEnsembleName:I = 0xa

.field public static final dabEnsembleNameShort:I = 0xb

.field public static final dabServiceName:I = 0xc

.field public static final dabServiceNameShort:I = 0xd

.field public static final genre:I = 0x10

.field public static final hdStationNameLong:I = 0x16

.field public static final hdStationNameShort:I = 0x15

.field public static final hdSubChannelsAvailable:I = 0x17

.field public static final programName:I = 0x9

.field public static final rbdsPty:I = 0x2

.field public static final rdsPs:I = 0x0

.field public static final rdsPty:I = 0x1

.field public static final rdsRt:I = 0x3

.field public static final songAlbum:I = 0x6

.field public static final songArtist:I = 0x5

.field public static final songTitle:I = 0x4

.field public static final stationIcon:I = 0x7

.field public static final ufids:I = 0x14


# instance fields
.field private _tag:I

.field private _value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 424
    new-instance v0, Landroid/hardware/broadcastradio/Metadata$1;

    invoke-direct {v0}, Landroid/hardware/broadcastradio/Metadata$1;-><init>()V

    sput-object v0, Landroid/hardware/broadcastradio/Metadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    .line 42
    .local v0, "_value":Ljava/lang/String;
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/broadcastradio/Metadata;->_tag:I

    .line 43
    iput-object v0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 44
    return-void
.end method

.method private constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Landroid/hardware/broadcastradio/Metadata;->_tag:I

    .line 52
    iput-object p2, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 53
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p0, p1}, Landroid/hardware/broadcastradio/Metadata;->readFromParcel(Landroid/os/Parcel;)V

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/broadcastradio/Metadata-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Landroid/hardware/broadcastradio/Metadata;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private _assertTag(I)V
    .locals 3
    .param p1, "tag"    # I

    .line 697
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 700
    return-void

    .line 698
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Landroid/hardware/broadcastradio/Metadata;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/broadcastradio/Metadata;->_tagString(I)Ljava/lang/String;

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

    .line 733
    iput p1, p0, Landroid/hardware/broadcastradio/Metadata;->_tag:I

    .line 734
    iput-object p2, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 735
    return-void
.end method

.method private _tagString(I)Ljava/lang/String;
    .locals 3
    .param p1, "_tag"    # I

    .line 703
    packed-switch p1, :pswitch_data_0

    .line 729
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

    .line 727
    :pswitch_0
    const-string/jumbo v0, "hdSubChannelsAvailable"

    return-object v0

    .line 726
    :pswitch_1
    const-string/jumbo v0, "hdStationNameLong"

    return-object v0

    .line 725
    :pswitch_2
    const-string/jumbo v0, "hdStationNameShort"

    return-object v0

    .line 724
    :pswitch_3
    const-string/jumbo v0, "ufids"

    return-object v0

    .line 723
    :pswitch_4
    const-string v0, "commercial"

    return-object v0

    .line 722
    :pswitch_5
    const-string v0, "commentActualText"

    return-object v0

    .line 721
    :pswitch_6
    const-string v0, "commentShortDescription"

    return-object v0

    .line 720
    :pswitch_7
    const-string/jumbo v0, "genre"

    return-object v0

    .line 719
    :pswitch_8
    const-string v0, "dabComponentNameShort"

    return-object v0

    .line 718
    :pswitch_9
    const-string v0, "dabComponentName"

    return-object v0

    .line 717
    :pswitch_a
    const-string v0, "dabServiceNameShort"

    return-object v0

    .line 716
    :pswitch_b
    const-string v0, "dabServiceName"

    return-object v0

    .line 715
    :pswitch_c
    const-string v0, "dabEnsembleNameShort"

    return-object v0

    .line 714
    :pswitch_d
    const-string v0, "dabEnsembleName"

    return-object v0

    .line 713
    :pswitch_e
    const-string/jumbo v0, "programName"

    return-object v0

    .line 712
    :pswitch_f
    const-string v0, "albumArt"

    return-object v0

    .line 711
    :pswitch_10
    const-string/jumbo v0, "stationIcon"

    return-object v0

    .line 710
    :pswitch_11
    const-string/jumbo v0, "songAlbum"

    return-object v0

    .line 709
    :pswitch_12
    const-string/jumbo v0, "songArtist"

    return-object v0

    .line 708
    :pswitch_13
    const-string/jumbo v0, "songTitle"

    return-object v0

    .line 707
    :pswitch_14
    const-string/jumbo v0, "rdsRt"

    return-object v0

    .line 706
    :pswitch_15
    const-string/jumbo v0, "rbdsPty"

    return-object v0

    .line 705
    :pswitch_16
    const-string/jumbo v0, "rdsPty"

    return-object v0

    .line 704
    :pswitch_17
    const-string/jumbo v0, "rdsPs"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static albumArt(I)Landroid/hardware/broadcastradio/Metadata;
    .locals 3
    .param p0, "_value"    # I

    .line 182
    new-instance v0, Landroid/hardware/broadcastradio/Metadata;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-direct {v0, v2, v1}, Landroid/hardware/broadcastradio/Metadata;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static commentActualText(Ljava/lang/String;)Landroid/hardware/broadcastradio/Metadata;
    .locals 2
    .param p0, "_value"    # Ljava/lang/String;

    .line 332
    new-instance v0, Landroid/hardware/broadcastradio/Metadata;

    const/16 v1, 0x12

    invoke-direct {v0, v1, p0}, Landroid/hardware/broadcastradio/Metadata;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static commentShortDescription(Ljava/lang/String;)Landroid/hardware/broadcastradio/Metadata;
    .locals 2
    .param p0, "_value"    # Ljava/lang/String;

    .line 317
    new-instance v0, Landroid/hardware/broadcastradio/Metadata;

    const/16 v1, 0x11

    invoke-direct {v0, v1, p0}, Landroid/hardware/broadcastradio/Metadata;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static commercial(Ljava/lang/String;)Landroid/hardware/broadcastradio/Metadata;
    .locals 2
    .param p0, "_value"    # Ljava/lang/String;

    .line 347
    new-instance v0, Landroid/hardware/broadcastradio/Metadata;

    const/16 v1, 0x13

    invoke-direct {v0, v1, p0}, Landroid/hardware/broadcastradio/Metadata;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static dabComponentName(Ljava/lang/String;)Landroid/hardware/broadcastradio/Metadata;
    .locals 2
    .param p0, "_value"    # Ljava/lang/String;

    .line 272
    new-instance v0, Landroid/hardware/broadcastradio/Metadata;

    const/16 v1, 0xe

    invoke-direct {v0, v1, p0}, Landroid/hardware/broadcastradio/Metadata;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static dabComponentNameShort(Ljava/lang/String;)Landroid/hardware/broadcastradio/Metadata;
    .locals 2
    .param p0, "_value"    # Ljava/lang/String;

    .line 287
    new-instance v0, Landroid/hardware/broadcastradio/Metadata;

    const/16 v1, 0xf

    invoke-direct {v0, v1, p0}, Landroid/hardware/broadcastradio/Metadata;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static dabEnsembleName(Ljava/lang/String;)Landroid/hardware/broadcastradio/Metadata;
    .locals 2
    .param p0, "_value"    # Ljava/lang/String;

    .line 212
    new-instance v0, Landroid/hardware/broadcastradio/Metadata;

    const/16 v1, 0xa

    invoke-direct {v0, v1, p0}, Landroid/hardware/broadcastradio/Metadata;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static dabEnsembleNameShort(Ljava/lang/String;)Landroid/hardware/broadcastradio/Metadata;
    .locals 2
    .param p0, "_value"    # Ljava/lang/String;

    .line 227
    new-instance v0, Landroid/hardware/broadcastradio/Metadata;

    const/16 v1, 0xb

    invoke-direct {v0, v1, p0}, Landroid/hardware/broadcastradio/Metadata;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static dabServiceName(Ljava/lang/String;)Landroid/hardware/broadcastradio/Metadata;
    .locals 2
    .param p0, "_value"    # Ljava/lang/String;

    .line 242
    new-instance v0, Landroid/hardware/broadcastradio/Metadata;

    const/16 v1, 0xc

    invoke-direct {v0, v1, p0}, Landroid/hardware/broadcastradio/Metadata;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static dabServiceNameShort(Ljava/lang/String;)Landroid/hardware/broadcastradio/Metadata;
    .locals 2
    .param p0, "_value"    # Ljava/lang/String;

    .line 257
    new-instance v0, Landroid/hardware/broadcastradio/Metadata;

    const/16 v1, 0xd

    invoke-direct {v0, v1, p0}, Landroid/hardware/broadcastradio/Metadata;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static genre(Ljava/lang/String;)Landroid/hardware/broadcastradio/Metadata;
    .locals 2
    .param p0, "_value"    # Ljava/lang/String;

    .line 302
    new-instance v0, Landroid/hardware/broadcastradio/Metadata;

    const/16 v1, 0x10

    invoke-direct {v0, v1, p0}, Landroid/hardware/broadcastradio/Metadata;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static hdStationNameLong(Ljava/lang/String;)Landroid/hardware/broadcastradio/Metadata;
    .locals 2
    .param p0, "_value"    # Ljava/lang/String;

    .line 392
    new-instance v0, Landroid/hardware/broadcastradio/Metadata;

    const/16 v1, 0x16

    invoke-direct {v0, v1, p0}, Landroid/hardware/broadcastradio/Metadata;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static hdStationNameShort(Ljava/lang/String;)Landroid/hardware/broadcastradio/Metadata;
    .locals 2
    .param p0, "_value"    # Ljava/lang/String;

    .line 377
    new-instance v0, Landroid/hardware/broadcastradio/Metadata;

    const/16 v1, 0x15

    invoke-direct {v0, v1, p0}, Landroid/hardware/broadcastradio/Metadata;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static hdSubChannelsAvailable(I)Landroid/hardware/broadcastradio/Metadata;
    .locals 3
    .param p0, "_value"    # I

    .line 407
    new-instance v0, Landroid/hardware/broadcastradio/Metadata;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x17

    invoke-direct {v0, v2, v1}, Landroid/hardware/broadcastradio/Metadata;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static programName(Ljava/lang/String;)Landroid/hardware/broadcastradio/Metadata;
    .locals 2
    .param p0, "_value"    # Ljava/lang/String;

    .line 197
    new-instance v0, Landroid/hardware/broadcastradio/Metadata;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0}, Landroid/hardware/broadcastradio/Metadata;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static rbdsPty(I)Landroid/hardware/broadcastradio/Metadata;
    .locals 3
    .param p0, "_value"    # I

    .line 92
    new-instance v0, Landroid/hardware/broadcastradio/Metadata;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Landroid/hardware/broadcastradio/Metadata;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static rdsPs(Ljava/lang/String;)Landroid/hardware/broadcastradio/Metadata;
    .locals 2
    .param p0, "_value"    # Ljava/lang/String;

    .line 62
    new-instance v0, Landroid/hardware/broadcastradio/Metadata;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/hardware/broadcastradio/Metadata;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static rdsPty(I)Landroid/hardware/broadcastradio/Metadata;
    .locals 3
    .param p0, "_value"    # I

    .line 77
    new-instance v0, Landroid/hardware/broadcastradio/Metadata;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Landroid/hardware/broadcastradio/Metadata;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static rdsRt(Ljava/lang/String;)Landroid/hardware/broadcastradio/Metadata;
    .locals 2
    .param p0, "_value"    # Ljava/lang/String;

    .line 107
    new-instance v0, Landroid/hardware/broadcastradio/Metadata;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Landroid/hardware/broadcastradio/Metadata;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static songAlbum(Ljava/lang/String;)Landroid/hardware/broadcastradio/Metadata;
    .locals 2
    .param p0, "_value"    # Ljava/lang/String;

    .line 152
    new-instance v0, Landroid/hardware/broadcastradio/Metadata;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Landroid/hardware/broadcastradio/Metadata;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static songArtist(Ljava/lang/String;)Landroid/hardware/broadcastradio/Metadata;
    .locals 2
    .param p0, "_value"    # Ljava/lang/String;

    .line 137
    new-instance v0, Landroid/hardware/broadcastradio/Metadata;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Landroid/hardware/broadcastradio/Metadata;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static songTitle(Ljava/lang/String;)Landroid/hardware/broadcastradio/Metadata;
    .locals 2
    .param p0, "_value"    # Ljava/lang/String;

    .line 122
    new-instance v0, Landroid/hardware/broadcastradio/Metadata;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Landroid/hardware/broadcastradio/Metadata;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static stationIcon(I)Landroid/hardware/broadcastradio/Metadata;
    .locals 3
    .param p0, "_value"    # I

    .line 167
    new-instance v0, Landroid/hardware/broadcastradio/Metadata;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-direct {v0, v2, v1}, Landroid/hardware/broadcastradio/Metadata;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static ufids([Ljava/lang/String;)Landroid/hardware/broadcastradio/Metadata;
    .locals 2
    .param p0, "_value"    # [Ljava/lang/String;

    .line 362
    new-instance v0, Landroid/hardware/broadcastradio/Metadata;

    const/16 v1, 0x14

    invoke-direct {v0, v1, p0}, Landroid/hardware/broadcastradio/Metadata;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 644
    const/4 v0, 0x0

    .line 645
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getTag()I

    .line 647
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 682
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 683
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 684
    :cond_1
    instance-of v2, p1, Landroid/hardware/broadcastradio/Metadata;

    if-nez v2, :cond_2

    return v1

    .line 685
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/hardware/broadcastradio/Metadata;

    .line 686
    .local v2, "that":Landroid/hardware/broadcastradio/Metadata;
    iget v3, p0, Landroid/hardware/broadcastradio/Metadata;->_tag:I

    iget v4, v2, Landroid/hardware/broadcastradio/Metadata;->_tag:I

    if-eq v3, v4, :cond_3

    return v1

    .line 687
    :cond_3
    iget-object v3, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    iget-object v4, v2, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v1

    .line 688
    :cond_4
    return v0
.end method

.method public getAlbumArt()I
    .locals 1

    .line 186
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 187
    iget-object v0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getCommentActualText()Ljava/lang/String;
    .locals 1

    .line 336
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 337
    iget-object v0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCommentShortDescription()Ljava/lang/String;
    .locals 1

    .line 321
    const/16 v0, 0x11

    invoke-direct {p0, v0}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 322
    iget-object v0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCommercial()Ljava/lang/String;
    .locals 1

    .line 351
    const/16 v0, 0x13

    invoke-direct {p0, v0}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 352
    iget-object v0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDabComponentName()Ljava/lang/String;
    .locals 1

    .line 276
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 277
    iget-object v0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDabComponentNameShort()Ljava/lang/String;
    .locals 1

    .line 291
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 292
    iget-object v0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDabEnsembleName()Ljava/lang/String;
    .locals 1

    .line 216
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 217
    iget-object v0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDabEnsembleNameShort()Ljava/lang/String;
    .locals 1

    .line 231
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 232
    iget-object v0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDabServiceName()Ljava/lang/String;
    .locals 1

    .line 246
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 247
    iget-object v0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDabServiceNameShort()Ljava/lang/String;
    .locals 1

    .line 261
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 262
    iget-object v0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getGenre()Ljava/lang/String;
    .locals 1

    .line 306
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 307
    iget-object v0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getHdStationNameLong()Ljava/lang/String;
    .locals 1

    .line 396
    const/16 v0, 0x16

    invoke-direct {p0, v0}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 397
    iget-object v0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getHdStationNameShort()Ljava/lang/String;
    .locals 1

    .line 381
    const/16 v0, 0x15

    invoke-direct {p0, v0}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 382
    iget-object v0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getHdSubChannelsAvailable()I
    .locals 1

    .line 411
    const/16 v0, 0x17

    invoke-direct {p0, v0}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 412
    iget-object v0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getProgramName()Ljava/lang/String;
    .locals 1

    .line 201
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 202
    iget-object v0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRbdsPty()I
    .locals 1

    .line 96
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 97
    iget-object v0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getRdsPs()Ljava/lang/String;
    .locals 1

    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 67
    iget-object v0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRdsPty()I
    .locals 1

    .line 81
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 82
    iget-object v0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getRdsRt()Ljava/lang/String;
    .locals 1

    .line 111
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 112
    iget-object v0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSongAlbum()Ljava/lang/String;
    .locals 1

    .line 156
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 157
    iget-object v0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSongArtist()Ljava/lang/String;
    .locals 1

    .line 141
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 142
    iget-object v0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSongTitle()Ljava/lang/String;
    .locals 1

    .line 126
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 127
    iget-object v0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getStability()I
    .locals 1

    .line 421
    const/4 v0, 0x1

    return v0
.end method

.method public getStationIcon()I
    .locals 1

    .line 171
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 172
    iget-object v0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getTag()I
    .locals 1

    .line 56
    iget v0, p0, Landroid/hardware/broadcastradio/Metadata;->_tag:I

    return v0
.end method

.method public getUfids()[Ljava/lang/String;
    .locals 1

    .line 366
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 367
    iget-object v0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 693
    iget v0, p0, Landroid/hardware/broadcastradio/Metadata;->_tag:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 516
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 517
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_0

    .line 639
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

    .line 635
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 636
    .local v1, "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    .line 637
    return-void

    .line 630
    .end local v1    # "_aidl_value":I
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 631
    .local v1, "_aidl_value":Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    .line 632
    return-void

    .line 625
    .end local v1    # "_aidl_value":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 626
    .restart local v1    # "_aidl_value":Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    .line 627
    return-void

    .line 620
    .end local v1    # "_aidl_value":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 621
    .local v1, "_aidl_value":[Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    .line 622
    return-void

    .line 615
    .end local v1    # "_aidl_value":[Ljava/lang/String;
    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 616
    .local v1, "_aidl_value":Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    .line 617
    return-void

    .line 610
    .end local v1    # "_aidl_value":Ljava/lang/String;
    :pswitch_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 611
    .restart local v1    # "_aidl_value":Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    .line 612
    return-void

    .line 605
    .end local v1    # "_aidl_value":Ljava/lang/String;
    :pswitch_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 606
    .restart local v1    # "_aidl_value":Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    .line 607
    return-void

    .line 600
    .end local v1    # "_aidl_value":Ljava/lang/String;
    :pswitch_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 601
    .restart local v1    # "_aidl_value":Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    .line 602
    return-void

    .line 595
    .end local v1    # "_aidl_value":Ljava/lang/String;
    :pswitch_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 596
    .restart local v1    # "_aidl_value":Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    .line 597
    return-void

    .line 590
    .end local v1    # "_aidl_value":Ljava/lang/String;
    :pswitch_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 591
    .restart local v1    # "_aidl_value":Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    .line 592
    return-void

    .line 585
    .end local v1    # "_aidl_value":Ljava/lang/String;
    :pswitch_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 586
    .restart local v1    # "_aidl_value":Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    .line 587
    return-void

    .line 580
    .end local v1    # "_aidl_value":Ljava/lang/String;
    :pswitch_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 581
    .restart local v1    # "_aidl_value":Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    .line 582
    return-void

    .line 575
    .end local v1    # "_aidl_value":Ljava/lang/String;
    :pswitch_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 576
    .restart local v1    # "_aidl_value":Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    .line 577
    return-void

    .line 570
    .end local v1    # "_aidl_value":Ljava/lang/String;
    :pswitch_d
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 571
    .restart local v1    # "_aidl_value":Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    .line 572
    return-void

    .line 565
    .end local v1    # "_aidl_value":Ljava/lang/String;
    :pswitch_e
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 566
    .restart local v1    # "_aidl_value":Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    .line 567
    return-void

    .line 560
    .end local v1    # "_aidl_value":Ljava/lang/String;
    :pswitch_f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 561
    .local v1, "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    .line 562
    return-void

    .line 555
    .end local v1    # "_aidl_value":I
    :pswitch_10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 556
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    .line 557
    return-void

    .line 550
    .end local v1    # "_aidl_value":I
    :pswitch_11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 551
    .local v1, "_aidl_value":Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    .line 552
    return-void

    .line 545
    .end local v1    # "_aidl_value":Ljava/lang/String;
    :pswitch_12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 546
    .restart local v1    # "_aidl_value":Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    .line 547
    return-void

    .line 540
    .end local v1    # "_aidl_value":Ljava/lang/String;
    :pswitch_13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 541
    .restart local v1    # "_aidl_value":Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    .line 542
    return-void

    .line 535
    .end local v1    # "_aidl_value":Ljava/lang/String;
    :pswitch_14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 536
    .restart local v1    # "_aidl_value":Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    .line 537
    return-void

    .line 530
    .end local v1    # "_aidl_value":Ljava/lang/String;
    :pswitch_15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 531
    .local v1, "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    .line 532
    return-void

    .line 525
    .end local v1    # "_aidl_value":I
    :pswitch_16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 526
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    .line 527
    return-void

    .line 520
    .end local v1    # "_aidl_value":I
    :pswitch_17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 521
    .local v1, "_aidl_value":Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    .line 522
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAlbumArt(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 191
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x8

    invoke-direct {p0, v1, v0}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    .line 192
    return-void
.end method

.method public setCommentActualText(Ljava/lang/String;)V
    .locals 1
    .param p1, "_value"    # Ljava/lang/String;

    .line 341
    const/16 v0, 0x12

    invoke-direct {p0, v0, p1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    .line 342
    return-void
.end method

.method public setCommentShortDescription(Ljava/lang/String;)V
    .locals 1
    .param p1, "_value"    # Ljava/lang/String;

    .line 326
    const/16 v0, 0x11

    invoke-direct {p0, v0, p1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    .line 327
    return-void
.end method

.method public setCommercial(Ljava/lang/String;)V
    .locals 1
    .param p1, "_value"    # Ljava/lang/String;

    .line 356
    const/16 v0, 0x13

    invoke-direct {p0, v0, p1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    .line 357
    return-void
.end method

.method public setDabComponentName(Ljava/lang/String;)V
    .locals 1
    .param p1, "_value"    # Ljava/lang/String;

    .line 281
    const/16 v0, 0xe

    invoke-direct {p0, v0, p1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    .line 282
    return-void
.end method

.method public setDabComponentNameShort(Ljava/lang/String;)V
    .locals 1
    .param p1, "_value"    # Ljava/lang/String;

    .line 296
    const/16 v0, 0xf

    invoke-direct {p0, v0, p1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    .line 297
    return-void
.end method

.method public setDabEnsembleName(Ljava/lang/String;)V
    .locals 1
    .param p1, "_value"    # Ljava/lang/String;

    .line 221
    const/16 v0, 0xa

    invoke-direct {p0, v0, p1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    .line 222
    return-void
.end method

.method public setDabEnsembleNameShort(Ljava/lang/String;)V
    .locals 1
    .param p1, "_value"    # Ljava/lang/String;

    .line 236
    const/16 v0, 0xb

    invoke-direct {p0, v0, p1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    .line 237
    return-void
.end method

.method public setDabServiceName(Ljava/lang/String;)V
    .locals 1
    .param p1, "_value"    # Ljava/lang/String;

    .line 251
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    .line 252
    return-void
.end method

.method public setDabServiceNameShort(Ljava/lang/String;)V
    .locals 1
    .param p1, "_value"    # Ljava/lang/String;

    .line 266
    const/16 v0, 0xd

    invoke-direct {p0, v0, p1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    .line 267
    return-void
.end method

.method public setGenre(Ljava/lang/String;)V
    .locals 1
    .param p1, "_value"    # Ljava/lang/String;

    .line 311
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    .line 312
    return-void
.end method

.method public setHdStationNameLong(Ljava/lang/String;)V
    .locals 1
    .param p1, "_value"    # Ljava/lang/String;

    .line 401
    const/16 v0, 0x16

    invoke-direct {p0, v0, p1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    .line 402
    return-void
.end method

.method public setHdStationNameShort(Ljava/lang/String;)V
    .locals 1
    .param p1, "_value"    # Ljava/lang/String;

    .line 386
    const/16 v0, 0x15

    invoke-direct {p0, v0, p1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    .line 387
    return-void
.end method

.method public setHdSubChannelsAvailable(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 416
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x17

    invoke-direct {p0, v1, v0}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    .line 417
    return-void
.end method

.method public setProgramName(Ljava/lang/String;)V
    .locals 1
    .param p1, "_value"    # Ljava/lang/String;

    .line 206
    const/16 v0, 0x9

    invoke-direct {p0, v0, p1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    .line 207
    return-void
.end method

.method public setRbdsPty(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 101
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    .line 102
    return-void
.end method

.method public setRdsPs(Ljava/lang/String;)V
    .locals 1
    .param p1, "_value"    # Ljava/lang/String;

    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    .line 72
    return-void
.end method

.method public setRdsPty(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 86
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    .line 87
    return-void
.end method

.method public setRdsRt(Ljava/lang/String;)V
    .locals 1
    .param p1, "_value"    # Ljava/lang/String;

    .line 116
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    .line 117
    return-void
.end method

.method public setSongAlbum(Ljava/lang/String;)V
    .locals 1
    .param p1, "_value"    # Ljava/lang/String;

    .line 161
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    .line 162
    return-void
.end method

.method public setSongArtist(Ljava/lang/String;)V
    .locals 1
    .param p1, "_value"    # Ljava/lang/String;

    .line 146
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    .line 147
    return-void
.end method

.method public setSongTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "_value"    # Ljava/lang/String;

    .line 131
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    .line 132
    return-void
.end method

.method public setStationIcon(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 176
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x7

    invoke-direct {p0, v1, v0}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    .line 177
    return-void
.end method

.method public setUfids([Ljava/lang/String;)V
    .locals 1
    .param p1, "_value"    # [Ljava/lang/String;

    .line 371
    const/16 v0, 0x14

    invoke-direct {p0, v0, p1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    .line 372
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 652
    iget v0, p0, Landroid/hardware/broadcastradio/Metadata;->_tag:I

    const-string v1, ")"

    packed-switch v0, :pswitch_data_0

    .line 678
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/hardware/broadcastradio/Metadata;->_tag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 676
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata.hdSubChannelsAvailable("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getHdSubChannelsAvailable()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 675
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata.hdStationNameLong("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getHdStationNameLong()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 674
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata.hdStationNameShort("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getHdStationNameShort()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 673
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata.ufids("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getUfids()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 672
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata.commercial("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getCommercial()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 671
    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata.commentActualText("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getCommentActualText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 670
    :pswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata.commentShortDescription("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getCommentShortDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 669
    :pswitch_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata.genre("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getGenre()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 668
    :pswitch_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata.dabComponentNameShort("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getDabComponentNameShort()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 667
    :pswitch_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata.dabComponentName("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getDabComponentName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 666
    :pswitch_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata.dabServiceNameShort("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getDabServiceNameShort()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 665
    :pswitch_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata.dabServiceName("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getDabServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 664
    :pswitch_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata.dabEnsembleNameShort("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getDabEnsembleNameShort()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 663
    :pswitch_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata.dabEnsembleName("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getDabEnsembleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 662
    :pswitch_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata.programName("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getProgramName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 661
    :pswitch_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata.albumArt("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getAlbumArt()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 660
    :pswitch_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata.stationIcon("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getStationIcon()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 659
    :pswitch_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata.songAlbum("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getSongAlbum()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 658
    :pswitch_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata.songArtist("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getSongArtist()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 657
    :pswitch_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata.songTitle("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getSongTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 656
    :pswitch_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata.rdsRt("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getRdsRt()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 655
    :pswitch_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata.rbdsPty("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getRbdsPty()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 654
    :pswitch_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata.rdsPty("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getRdsPty()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 653
    :pswitch_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata.rdsPs("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getRdsPs()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 437
    iget v0, p0, Landroid/hardware/broadcastradio/Metadata;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 438
    iget v0, p0, Landroid/hardware/broadcastradio/Metadata;->_tag:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 509
    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getHdSubChannelsAvailable()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 506
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getHdStationNameLong()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 507
    goto/16 :goto_0

    .line 503
    :pswitch_2
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getHdStationNameShort()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 504
    goto/16 :goto_0

    .line 500
    :pswitch_3
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getUfids()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 501
    goto/16 :goto_0

    .line 497
    :pswitch_4
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getCommercial()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 498
    goto/16 :goto_0

    .line 494
    :pswitch_5
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getCommentActualText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 495
    goto/16 :goto_0

    .line 491
    :pswitch_6
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getCommentShortDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 492
    goto/16 :goto_0

    .line 488
    :pswitch_7
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getGenre()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 489
    goto/16 :goto_0

    .line 485
    :pswitch_8
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getDabComponentNameShort()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 486
    goto/16 :goto_0

    .line 482
    :pswitch_9
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getDabComponentName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 483
    goto/16 :goto_0

    .line 479
    :pswitch_a
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getDabServiceNameShort()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 480
    goto/16 :goto_0

    .line 476
    :pswitch_b
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getDabServiceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 477
    goto :goto_0

    .line 473
    :pswitch_c
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getDabEnsembleNameShort()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 474
    goto :goto_0

    .line 470
    :pswitch_d
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getDabEnsembleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 471
    goto :goto_0

    .line 467
    :pswitch_e
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getProgramName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 468
    goto :goto_0

    .line 464
    :pswitch_f
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getAlbumArt()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 465
    goto :goto_0

    .line 461
    :pswitch_10
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getStationIcon()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 462
    goto :goto_0

    .line 458
    :pswitch_11
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getSongAlbum()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 459
    goto :goto_0

    .line 455
    :pswitch_12
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getSongArtist()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 456
    goto :goto_0

    .line 452
    :pswitch_13
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getSongTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 453
    goto :goto_0

    .line 449
    :pswitch_14
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getRdsRt()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 450
    goto :goto_0

    .line 446
    :pswitch_15
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getRbdsPty()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 447
    goto :goto_0

    .line 443
    :pswitch_16
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getRdsPty()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 444
    goto :goto_0

    .line 440
    :pswitch_17
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getRdsPs()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 441
    nop

    .line 512
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
