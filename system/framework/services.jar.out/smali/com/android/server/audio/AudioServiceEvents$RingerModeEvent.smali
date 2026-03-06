.class final Lcom/android/server/audio/AudioServiceEvents$RingerModeEvent;
.super Lcom/android/server/utils/EventLogger$Event;
.source "AudioServiceEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioServiceEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RingerModeEvent"
.end annotation


# instance fields
.field final mExternal:Z

.field final mPid:I

.field final mPkg:Ljava/lang/String;

.field final mRingerMode:I

.field final mUid:I


# direct methods
.method constructor <init>(ILjava/lang/String;ZII)V
    .locals 0
    .param p1, "ringerMode"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "external"    # Z
    .param p4, "uid"    # I
    .param p5, "pid"    # I

    .line 795
    invoke-direct {p0}, Lcom/android/server/utils/EventLogger$Event;-><init>()V

    .line 796
    iput p1, p0, Lcom/android/server/audio/AudioServiceEvents$RingerModeEvent;->mRingerMode:I

    .line 797
    iput-object p2, p0, Lcom/android/server/audio/AudioServiceEvents$RingerModeEvent;->mPkg:Ljava/lang/String;

    .line 798
    iput-boolean p3, p0, Lcom/android/server/audio/AudioServiceEvents$RingerModeEvent;->mExternal:Z

    .line 799
    iput p4, p0, Lcom/android/server/audio/AudioServiceEvents$RingerModeEvent;->mUid:I

    .line 800
    iput p5, p0, Lcom/android/server/audio/AudioServiceEvents$RingerModeEvent;->mPid:I

    .line 801
    return-void
.end method

.method private ringerModeToString()Ljava/lang/String;
    .locals 1

    .line 804
    iget v0, p0, Lcom/android/server/audio/AudioServiceEvents$RingerModeEvent;->mRingerMode:I

    packed-switch v0, :pswitch_data_0

    .line 812
    const-string v0, "Unknow RINGER MODE"

    return-object v0

    .line 810
    :pswitch_0
    const-string v0, "RINGER_MODE_NORMAL"

    return-object v0

    .line 808
    :pswitch_1
    const-string v0, "RINGER_MODE_VIBRATE"

    return-object v0

    .line 806
    :pswitch_2
    const-string v0, "RINGER_MODE_SILENT"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public eventToString()Ljava/lang/String;
    .locals 2

    .line 817
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ringer mode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 818
    invoke-direct {p0}, Lcom/android/server/audio/AudioServiceEvents$RingerModeEvent;->ringerModeToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 819
    const-string v1, " from pkg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/AudioServiceEvents$RingerModeEvent;->mPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    const-string v1, " u/pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$RingerModeEvent;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$RingerModeEvent;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 821
    const-string v1, " external:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/AudioServiceEvents$RingerModeEvent;->mExternal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 822
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 817
    return-object v0
.end method
